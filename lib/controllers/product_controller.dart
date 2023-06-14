import 'package:get/get.dart';
import 'package:uas_stationery_app/models/product_models.dart';
import 'package:uas_stationery_app/services/db_firestore.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;

  @override
  void onInit() {
    products.bindStream(DBFirestore().getAllProducts());
    super.onInit();
  }
}
