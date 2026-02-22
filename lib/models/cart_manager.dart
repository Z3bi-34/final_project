import 'product.dart';

class CartManager {
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  final List<Product> items = [];

  void addProduct(Product product) {
    items.add(product);
  }

  void removeProduct(Product product) {
    items.remove(product);
  }

  void clearCart() {
    items.clear();
  }

  double get totalPrice {
    return items.fold(0, (sum, item) => sum + item.price);
  }
}