class ApiErrorResponse {
  final DateTime? timestamp;
  final int? status;
  final String? error;
  final String? message;
  final String? path;

  ApiErrorResponse({
    this.timestamp,
    this.status,
    this.error,
    this.message,
    this.path,
  });

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) {
    return ApiErrorResponse(
      timestamp: json['timestamp'] != null ? DateTime.parse(json['timestamp']) : null,
      status: json['status'],
      error: json['error'],
      message: json['message'],
      path: json['path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp?.toIso8601String(),
      'status': status,
      'error': error,
      'message': message,
      'path': path,
    };
  }
}