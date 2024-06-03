class OrderProductModel {
  final String address;
  final String customer;
  final String productName;
  final String phone;
  final String price;
  final String transactionId;
  final String dateTime;

  const OrderProductModel({
    required this.address,
    required this.customer,
    required this.productName,
    required this.phone,
    required this.price,
    required this.transactionId,
    required this.dateTime,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) {
    return OrderProductModel(
      address: json['address'],
      customer: json['customer'],
      productName: json['productName'],
      phone: json['phone'],
      price: json['price'],
      transactionId: json['transactionId'],
      dateTime: json['dateTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'customer': customer,
      'productName': productName,
      'phone': phone,
      'price': price,
      'transactionId': transactionId,
      'dateTime': dateTime,
    };
  }

  OrderProductModel copyWith({
    String? address,
    String? customer,
    String? productName,
    String? phone,
    String? price,
    String? transactionId,
    String? dateTime,
  }) {
    return OrderProductModel(
      address: address ?? this.address,
      customer: customer ?? this.customer,
      productName: productName ?? this.productName,
      phone: phone ?? this.phone,
      price: price ?? this.price,
      transactionId: transactionId ?? this.transactionId,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
