class ApiError implements Exception {
  final String message;
  final int? statusCode;
  final Map<String, dynamic>? details;

  ApiError({required this.message, this.statusCode, this.details});

  @override
  String toString() {
    return 'ApiError: $message${statusCode != null ? ' (Status Code: $statusCode)' : ''}${details != null ? ' Details: $details' : ''}';
  }
}
