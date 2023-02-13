import 'package:bit_coin/price_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(appBarTheme: const AppBarTheme(centerTitle: true)),
      home: const PriceScreen(),
    );
  }
}
