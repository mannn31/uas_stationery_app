import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      price: snap['price'],
      imageUrl: snap['imageUrl'],
    );
    return product;
  }

  // static const List<Product> products = [
  //   Product(
  //       name: 'Joyko Pen',
  //       price: 16,
  //       imageUrl:
  //           'https://image1ws.indotrading.com/s3/productimages/webp/co248875/p1158663/w425-h425/b91e6217-5fb2-4033-a9e2-03377583fdfa.jpg'),
  //   Product(
  //       name: 'Joyko Pencil',
  //       price: 10,
  //       imageUrl:
  //           'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/31/ba40aece-bc96-4dc9-a5ad-983ea0ab47a6.jpg'),
  //   Product(
  //       name: 'Snowman Marker',
  //       price: 20,
  //       imageUrl:
  //           'https://gratisongkir-storage.com/products/900x900/1ad5myryasKa.jpg'),
  // ];
}
