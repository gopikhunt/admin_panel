class Product {
  final int id;
  final String name;
  final String image;
  final String category;
  final int stock;
  final int sold;
  final double price;
  final DateTime createdOn;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.category,
    required this.stock,
    required this.sold,
    required this.price,
    required this.createdOn,
  });
}
