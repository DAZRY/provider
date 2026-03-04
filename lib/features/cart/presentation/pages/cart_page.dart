import 'package:catalogue/features/cart/domain/entities/product.dart';
import 'package:catalogue/features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Halaman Keranjang
class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Keranjang Belanja')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final Product = cart.items[index];

                return ListTile(
                  leading: const Icon(Icons.breakfast_dining),
                  title: Text(Product.name),
                  subtitle: Text('Harga: \$${Product.price}'),
                );
              },
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () => cart.removeAll(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Hapus Keranjang',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
