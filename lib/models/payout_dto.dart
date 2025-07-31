class PayoutDTO {
  final int? id;
  final double amount;
  final String currency;
  // Add other properties as per your PayoutDTO

  PayoutDTO({
    this.id,
    required this.amount,
    required this.currency,
  });

  factory PayoutDTO.fromJson(Map<String, dynamic> json) {
    return PayoutDTO(
      id: json['id'],
      amount: json['amount'],
      currency: json['currency'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'currency': currency,
    };
  }
}