import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductStationery extends StatelessWidget {
  const ProductStationery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            // Jika layar berukuran kecil, tampilkan bottom navigation bar
            return _buildMobileLayoutStationery();
          } else {
            // Jika layar berukuran besar, tampilkan sidebar
            return _buildDesktopLayoutStationery();
          }
        },
      ),
    );
  }
}

class ProductPaper extends StatelessWidget {
  const ProductPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            // Jika layar berukuran kecil, tampilkan bottom navigation bar
            return _buildMobileLayoutPaper();
          } else {
            // Jika layar berukuran besar, tampilkan sidebar
            return _buildDesktopLayoutPaper();
          }
        },
      ),
    );
  }
}

class ProductBook extends StatelessWidget {
  const ProductBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            // Jika layar berukuran kecil, tampilkan bottom navigation bar
            return _buildMobileLayoutBook();
          } else {
            // Jika layar berukuran besar, tampilkan sidebar
            return _buildDesktopLayoutBook();
          }
        },
      ),
    );
  }
}

Widget _buildMobileLayoutStationery() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    ),
  );
}

Widget _buildDesktopLayoutStationery() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List of all stationery',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'assets/images/product1.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Joyko Pen',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 10.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/12/31/ba40aece-bc96-4dc9-a5ad-983ea0ab47a6.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Joyko Pencil',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 5.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://gratisongkir-storage.com/products/900x900/1ad5myryasKa.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Snowman Marker',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 20.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'assets/images/product4.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Faber Castell Colour Pencils',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 13.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildMobileLayoutPaper() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    ),
  );
}

Widget _buildDesktopLayoutPaper() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List of all paper',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://image1ws.indotrading.com/s3/productimages/webp/co254359/p1135825/w425-h425/c226fe16-e7b4-4d28-bbe9-8b48a4a67060.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'HVS A4 Sidu Paper',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 60.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://image.indonetwork.co.id/f-webp/products/thumbs/343x343/2022/10/04/0e4b7d53-65f9-4a2a-b2ed-d0ddbba5399b.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'HVS F4 Sidu Paper',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 70.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'assets/images/product7.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'HVS A3 Sidu Paper',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 65.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.tokopedia.net/img/cache/700/VqbcmM/2021/8/26/bbdd8f22-483a-408b-bb9f-ae51107f7df8.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'HVS Quarto Sidu Paper',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 63.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildMobileLayoutBook() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    ),
  );
}

Widget _buildDesktopLayoutBook() {
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List of all book',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'assets/images/product9.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sidu Book',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 32.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'assets/images/product10.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Campus Book',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 40.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/6/28/152ed87e-fa08-4838-abf9-1ac6bda062c2.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Vision Book',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 30.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://s3.bukalapak.com/img/8516123801/large/Buku_Tulis_AA_40_Lembar__Pak_10_Buku_.jpg',
                          width: 200,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'AA Book',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Rp. 25.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
