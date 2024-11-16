import 'User.dart';
import 'Product.dart';
import 'AdminUser.dart';

class CustomerUser extends User {
  CustomerUser({required super.name, required super.age}) : super(role: Role.Customer);

  void viewProducts() {
    showProducts();
  }
}

// Fungsi Asynchronous untuk Fetch Produk dari Server
Future<Product> fetchProductDetails(String productName) async {
  // Meniru penundaan pengambilan data produk
  await Future.delayed(Duration(seconds: 2));
  return Product(productName: productName, price: 99.99, inStock: true);
}

void main() async {
  // Menginisialisasi AdminUser dan CustomerUser
  AdminUser admin = AdminUser(name: 'Admin 1', age: 35);
  admin.productsMap = {}; // Admin memiliki Map produk kosong saat mulai
  admin.productsSet = {}; // Admin memiliki Set produk kosong saat mulai
  CustomerUser customer = CustomerUser(name: 'Customer 1', age: 28);
  customer.products = []; // Customer memiliki daftar produk kosong saat mulai

  // Membuat beberapa produk
  Product product1 = Product(productName: 'Laptop', price: 1000.00, inStock: true);
  Product product2 = Product(productName: 'Headphones', price: 150.00, inStock: true);
  Product product3 = Product(productName: 'Mouse', price: 50.00, inStock: false); // Out of stock

  // Menambah produk menggunakan admin
  try {
    admin.addProduct(product1); // Menambah produk yang tersedia
    admin.addProduct(product2); // Menambah produk yang tersedia
    admin.addProduct(product3); // Akan melempar exception karena produk tidak tersedia
  } catch (e) {
    print('Error: $e');
  }

  // Menampilkan produk setelah penambahan
  print('\nAdmin Product List (Map):');
  admin.showProductsFromMap();
  print('\nAdmin Product List (Set):');
  admin.showProductsFromSet();

  // Customer hanya bisa melihat produk
  print('\nCustomer Product List:');
  customer.viewProducts();

  // Mengambil detail produk secara asinkron
  print('\nFetching product details for "Smartphone"...');
  Product fetchedProduct = await fetchProductDetails('Smartphone');
  print('Fetched product: ${fetchedProduct.productName}, Price: \$${fetchedProduct.price}');
}
