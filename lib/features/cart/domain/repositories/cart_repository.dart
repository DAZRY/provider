// Abstract class: kontrak yang harus diikuti oleh implementasi
// Prinsip Dependency Inversion (DIP) dari SOLID
abstract class CartRepository {
  List<Product> getCartItems();
  void addItem(Product product);
  void removeAllItems();
  bool isItemInCart(String productId);
}
