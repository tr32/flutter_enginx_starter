class CityDTO {
  final int? id;
  final String name;
  final int countryId;
  // Add other properties as per your CityDTO

  CityDTO({
    this.id,
    required this.name,
    required this.countryId,
  });

  factory CityDTO.fromJson(Map<String, dynamic> json) {
    return CityDTO(
      id: json['id'],
      name: json['name'],
      countryId: json['countryId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'countryId': countryId,
    };
  }
}