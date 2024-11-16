import 'Product.dart';

class User {
  String name;
  int age;
  late List<Product> products; // Produk akan diinisialisasi nanti
  Role? role;
  User({required this.name, required this.age, this.role});
  void showProducts() {
    if (products.isEmpty) {
      print('No products available.');
    } else {
      for (var product in products) {
        print(product);
      }
    }
  }
}

//bab 1