import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/api_error_response.dart';
import '../models/generic_models.dart';
import 'api_error.dart';

class ApiService {
  static const String _baseUrl = 'http://localhost:8080/api';

  // JWT token for authenticated requests
  String? _jwtToken;

  ApiService._privateConstructor();

  // Singleton instance
  static final ApiService _instance = ApiService._privateConstructor();

  // Factory constructor to return the singleton instance
  factory ApiService() {
    return _instance;
  }

  Future<Map<String, dynamic>> getUserInfo() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/user-info'),
      headers: _getHeaders(includeAuth: true),
    );
    final jsonResponse = _handleResponse(response) as Map<String, dynamic>;
    return jsonResponse;
  }

  Future<void> register(RegistrationRequest request) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/users/register'),
      headers: _getHeaders(),
      body: json.encode(request.toJson()),
    );
    _handleResponse(response); // Expects 200 OK, no content
  }

  void setAuthToken(String token) {
    _jwtToken = token;
  }

  void clearAuthToken() {
    _jwtToken = null;
  }

  Map<String, String> _getHeaders({bool includeAuth = false}) {
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    if (includeAuth && _jwtToken != null) {
      headers['Authorization'] = 'Bearer $_jwtToken';
    }
    return headers;
  }

  /// Generic helper for handling HTTP responses and throwing [ApiError].
  dynamic _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isNotEmpty) {
        return json.decode(response.body);
      }
      return null; // For 204 No Content
    } else {
      // Attempt to parse APIErrorResponse from error body
      try {
        final errorJson = json.decode(response.body);
        final apiError = ApiErrorResponse.fromJson(errorJson);
        throw ApiError(
          message: apiError.message ?? 'An unknown error occurred',
          statusCode: apiError.status ?? response.statusCode,
          details: errorJson,
        );
      } catch (e) {
        // If parsing fails or response body is empty, throw a generic error
        throw ApiError(
          message: 'Failed to process API response. Status: ${response.statusCode}',
          statusCode: response.statusCode,
          details: {'responseBody': response.body, 'parseError': e.toString()},
        );
      }
    }
  }
}