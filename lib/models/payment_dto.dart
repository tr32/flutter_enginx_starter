class PaymentDTO {
  final int? id;
  final double amount;
  final String currency;
  final String status;
  // Add other properties as per your PaymentDTO

  PaymentDTO({
    this.id,
    required this.amount,
    required this.currency,
    required this.status,
  });

  factory PaymentDTO.fromJson(Map<String, dynamic> json) {
    return PaymentDTO(
      id: json['id'],
      amount: json['amount'],
      currency: json['currency'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'currency': currency,
      'status': status,
    };
  }
}