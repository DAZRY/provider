// Sebelumnya: routes didefinisikan langsung di MaterialApp
// Setelah refactor: dipindah ke file terpisah

class AppRouter {
  static const String catalog = '/';
  static const String cart = '/cart';
  
  static Map<String, WidgetBuilder> get routes => {
    catalog: (context) => const CatalogPage(),
    cart: (context) => const CartPage(),
  };
}
