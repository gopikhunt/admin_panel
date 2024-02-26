class Order {
  final int orderId;
  final int userId;
  final String userName;
  final String productName;
  final int totalQuantity;
  final double totalAmount;
  String status;

  Order({
    required this.orderId,
    required this.userId,
    required this.userName,
    required this.productName,
    required this.totalQuantity,
    required this.totalAmount,
    required this.status,
  });
}