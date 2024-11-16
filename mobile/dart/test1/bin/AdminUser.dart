import 'User.dart';
import 'Product.dart';

class AdminUser extends User {
  AdminUser({required super.name, required super.age}) : super(role: Role.Admin);
  
  Map<String, Product> productsMap = {};
  
  Set<Product> productsSet = {};
  
  void addProduct(Product product) {
    if (!product.inStock) {
      throw Exception('Cannot add product "${product.productName}". It is out of stock.');
    }
    // Cek di Map berdasarkan nama produk
    if (!productsMap.containsKey(product.productName)) {
      productsMap[product.productName] = product;
      print('Product "${product.productName}" added successfully to Map.');
    } else {
      print('Product "${product.productName}" already exists in Map.');
    }
    // Cek di Set berdasarkan objek produk
    if (!productsSet.contains(product)) {
      productsSet.add(product);
      print('Product "${product.productName}" added successfully to Set.');
    } else {
      print('Product "${product.productName}" already exists in Set.');
    }
  }
  // Menghapus produk dari daftar produk pengguna (dengan Map dan Set)
  void removeProduct(Product product) {
    // Hapus produk dari Map
    if (productsMap.containsKey(product.productName)) {
      productsMap.remove(product.productName);
      print('Product "${product.productName}" removed successfully from Map.');
    } else {
      print('Product "${product.productName}" not found in Map.');
    }

    // Hapus produk dari Set
    if (productsSet.contains(product)) {
      productsSet.remove(product);
      print('Product "${product.productName}" removed successfully from Set.');
    } else {
      print('Product "${product.productName}" not found in Set.');
    }
  }

  // Menampilkan produk yang ada dalam Map
  void showProductsFromMap() {
    if (productsMap.isEmpty) {
      print('No products available in Map.');
    } else {
      productsMap.forEach((key, value) {
        print('Product Name: ${key}, Product: ${value}');
      });
    }
  }

  // Menampilkan produk yang ada dalam Set
  void showProductsFromSet() {
    if (productsSet.isEmpty) {
      print('No products available in Set.');
    } else {
      productsSet.forEach((product) {
        print('Product: ${product.productName}');
      });
    }
  }
}
