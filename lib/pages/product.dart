import 'package:flutter/material.dart';

class ProductStationery extends StatelessWidget {
  const ProductStationery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Ini adalah halaman product stationery'),
    ));
  }
}

class ProductPaper extends StatelessWidget {
  const ProductPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Ini adalah halaman product paper'),
    ));
  }
}

class ProductBook extends StatelessWidget {
  const ProductBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Ini adalah halaman product book'),
    ));
  }
}
