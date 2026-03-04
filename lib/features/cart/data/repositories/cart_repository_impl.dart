// Implementasi konkret dari CartRepository
// Di sini bisa diganti dengan API call, database, dll
class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = [];

  @override
  List<Product> getCartItems() => List.unmodifiable(_items);

  @override
  void addItem(Product product) => _items.add(product);

  @override

  @override
  bool isItemInCart(String productId) => 
  _items.any((p) => p.id == productId);
}
