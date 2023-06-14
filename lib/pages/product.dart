import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_stationery_app/widgets/data_product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DataProduct(),
          ],
        ),
      ),
    );
  }
}
