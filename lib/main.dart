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
