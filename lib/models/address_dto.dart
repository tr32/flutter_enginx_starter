import 'generic_models.dart';

class AddressDTO {
  final int? id;
  final String street;
  final String city;
  final String zipCode;
  // Add other properties as per your AddressDTO

  AddressDTO({
    this.id,
    required this.street,
    required this.city,
    required this.zipCode,
  });

  factory AddressDTO.fromJson(Map<String, dynamic> json) {
    return AddressDTO(
      id: json['id'],
      street: json['street'],
      city: json['city'],
      zipCode: json['zipCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'street': street,
      'city': city,
      'zipCode': zipCode,
    };
  }
}

class PageAddressDTO {
  final List<AddressDTO> content;
  final int totalPages;
  final int totalElements;
  final int size;
  final int number;
  final Sort sort;
  final Pageable pageable;
  final bool first;
  final bool last;
  final int numberOfElements;
  final bool empty;

  PageAddressDTO({
    required this.content,
    required this.totalPages,
    required this.totalElements,
    required this.size,
    required this.number,
    required this.sort,
    required this.pageable,
    required this.first,
    required this.last,
    required this.numberOfElements,
    required this.empty,
  });

  factory PageAddressDTO.fromJson(Map<String, dynamic> json) {
    return PageAddressDTO(
      content: (json['content'] as List<dynamic>)
          .map((e) => AddressDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'],
      totalElements: json['totalElements'],
      size: json['size'],
      number: json['number'],
      sort: Sort.fromJson(json['sort'] as Map<String, dynamic>),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      first: json['first'],
      last: json['last'],
      numberOfElements: json['numberOfElements'],
      empty: json['empty'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content.map((e) => e.toJson()).toList(),
      'totalPages': totalPages,
      'totalElements': totalElements,
      'size': size,
      'number': number,
      'sort': sort.toJson(),
      'pageable': pageable.toJson(),
      'first': first,
      'last': last,
      'numberOfElements': numberOfElements,
      'empty': empty,
    };
  }
}