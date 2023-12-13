import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
            children: [
              Text(
                'ListView Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: products.map(
              (product) {
                return ListTile(
                  leading: const Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                  ),
                  title: Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  trailing: Text(
                    '\$ ${product.price}',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}

class Product {
  String name;
  double price;

  Product({required this.name, required this.price});
}

List<Product> products = [
  Product(name: 'Mac', price: 1999.99),
  Product(name: 'iPhone', price: 1299.99),
  Product(name: 'Watch', price: 699.99),
  Product(name: 'iPad', price: 799.99),
  Product(name: 'AirPods', price: 199.99),
];
