class AppUserDTO {
  final String? id; // UUID format
  final String username;
  final String email;
  // Add other properties as per your AppUserDTO
  final String? firstName;
  final String? lastName;

  AppUserDTO({
    this.id,
    required this.username,
    required this.email,
    this.firstName,
    this.lastName,
  });

  factory AppUserDTO.fromJson(Map<String, dynamic> json) {
    return AppUserDTO(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}