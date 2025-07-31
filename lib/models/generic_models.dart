class AuthenticationResponse {
  final String accessToken;
  final String refreshToken;

  AuthenticationResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) {
    return AuthenticationResponse(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }
}

class AuthenticationRequest {
  final String username;
  final String password;

  AuthenticationRequest({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

class RegistrationRequest {
  final String username;
  final String email;
  final String password;
  final String phoneNumber;

  RegistrationRequest({
    required this.username,
    required this.email,
    required this.password,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
    };
  }
}

/// for pagination
class Pageable {
  final int page;
  final int size;
  final List<String> sort;

  Pageable({
    required this.page,
    required this.size,
    required this.sort,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) {
    return Pageable(
      page: json['page'],
      size: json['size'],
      sort: List<String>.from(json['sort']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'size': size,
      'sort': sort,
    };
  }
}

/// sort information for pagination
class Sort {
  final bool sorted;
  final bool unsorted;
  final bool empty;

  Sort({
    required this.sorted,
    required this.unsorted,
    required this.empty,
  });

  factory Sort.fromJson(Map<String, dynamic> json) {
    return Sort(
      sorted: json['sorted'],
      unsorted: json['unsorted'],
      empty: json['empty'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sorted': sorted,
      'unsorted': unsorted,
      'empty': empty,
    };
  }
}