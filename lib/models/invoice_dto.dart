class InvoiceDTO {
  final int? id;
  final String invoiceNumber;
  final double amount;
  final String status;
  // Add other properties as per your InvoiceDTO

  InvoiceDTO({
    this.id,
    required this.invoiceNumber,
    required this.amount,
    required this.status,
  });

  factory InvoiceDTO.fromJson(Map<String, dynamic> json) {
    return InvoiceDTO(
      id: json['id'],
      invoiceNumber: json['invoiceNumber'],
      amount: json['amount'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'invoiceNumber': invoiceNumber,
      'amount': amount,
      'status': status,
    };
  }
}