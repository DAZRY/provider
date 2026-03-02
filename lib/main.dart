import 'package:flutter/material.dart';

void main() {
  runApp(
    // Membungkus aplikasi dengan changenotifierprovider
    //agar state bisa diakses dimana aja
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

//1. state model (business logic)
class CartModel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void add(String itemName) {
    _items.add(itemName);
    //code ini untuk beritahu UI untuk update
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}

// 2. UI Layer
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyCatalog(),
        '/cart': (context) => const MyCart(),
      },
    );
  }
}
