
class Product {
  String productName;
  double price;
  bool inStock;

  Product({
    required this.productName,
    required this.price,
    required this.inStock,
  });
  @override
  String toString() => '$productName (Price: \$${price.toStringAsFixed(2)}, In stock: $inStock)';
}
// Enum Role
enum Role { Admin, Customer }

//bab 1