// Mengatur semua dependency di satu tempat
Widget buildApp() {
  final cartRepository = CartRepositoryImpl();
  return ChangeNotifierProvider(
    create: (_) => CartProvider(repository: cartRepository),
    child: const MyApp(),
  );
}

void main() => runApp(buildApp());
