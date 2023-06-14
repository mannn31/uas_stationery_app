import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_stationery_app/controllers/cart_controller.dart';
import 'package:uas_stationery_app/controllers/product_controller.dart';

class DataProduct extends StatelessWidget {
  final productController = Get.put(ProductController());
  DataProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (BuildContext context, int index) {
            return DataProductCard(index: index);
          },
        ),
      ),
    );
  }
}

class DataProductCard extends StatelessWidget {
  final ProductController productController = Get.find();
  final cartController = Get.put(CartController());
  final int index;
  DataProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage:
                NetworkImage(productController.products[index].imageUrl),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              productController.products[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text('${productController.products[index].price}'),
          ),
          IconButton(
            onPressed: () {
              cartController.addProduct(productController.products[index]);
            },
            icon: Icon(Icons.add_circle_outline_rounded),
          ),
        ],
      ),
    );
  }
}
