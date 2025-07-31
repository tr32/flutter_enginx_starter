class CountryDTO {
  final int? id;
  final String name;
  final String iso2;
  // Add other properties as per your CountryDTO

  CountryDTO({
    this.id,
    required this.name,
    required this.iso2,
  });

  factory CountryDTO.fromJson(Map<String, dynamic> json) {
    return CountryDTO(
      id: json['id'],
      name: json['name'],
      iso2: json['iso2'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'iso2': iso2,
    };
  }
}