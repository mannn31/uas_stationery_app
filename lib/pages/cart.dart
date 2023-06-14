import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_stationery_app/widgets/cart_product.dart';
import 'package:uas_stationery_app/widgets/cart_total.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CartProducts(),
            CartTotal(),
          ],
        ),
      ),
    );
    ;
  }
}
