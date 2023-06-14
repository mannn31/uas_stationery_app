import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:uas_stationery_app/pages/cart.dart';
import 'package:uas_stationery_app/pages/home.dart';
import 'package:uas_stationery_app/pages/product.dart';
import 'package:uas_stationery_app/pages/profile.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _isSidebarCollapsed = false;
  int _selectedIndex = 0;

  List<Widget> _pages = [
    HomePage(),
    ProductPage(),
    CartPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            // Jika layar berukuran kecil, tampilkan bottom navigation bar
            return _buildMobileLayout();
          } else {
            // Jika layar berukuran besar, tampilkan sidebar
            return _buildDesktopLayout();
          }
        },
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        Expanded(child: _pages[_selectedIndex]),
        BottomNavyBar(
          backgroundColor: Color.fromRGBO(255, 232, 214, 1.0),
          selectedIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Color.fromRGBO(121, 85, 72, 1.0),
                inactiveColor: Color.fromRGBO(117, 106, 98, 1),
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: Icon(Icons.inventory),
                title: Text('Product'),
                activeColor: Color.fromRGBO(121, 85, 72, 1.0),
                inactiveColor: Color.fromRGBO(117, 106, 98, 1),
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart'),
                activeColor: Color.fromRGBO(121, 85, 72, 1.0),
                inactiveColor: Color.fromRGBO(117, 106, 98, 1),
                textAlign: TextAlign.center),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                activeColor: Color.fromRGBO(121, 85, 72, 1.0),
                inactiveColor: Color.fromRGBO(117, 106, 98, 1),
                textAlign: TextAlign.center),
          ],
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      children: [
        Drawer(
          backgroundColor: Color.fromRGBO(255, 232, 214, 1.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3237/3237837.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Stationery Shop',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home,
                    color: _selectedIndex == 0
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1)),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: _selectedIndex == 0
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1),
                  ),
                ),
                onTap: () {
                  _onItemTapped(0);
                },
              ),
              ListTile(
                leading: Icon(Icons.inventory,
                    color: _selectedIndex == 1
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1)),
                title: Text(
                  'Product',
                  style: TextStyle(
                    color: _selectedIndex == 1
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1),
                  ),
                ),
                onTap: () {
                  _onItemTapped(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart,
                    color: _selectedIndex == 2
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1)),
                title: Text(
                  'Cart',
                  style: TextStyle(
                    color: _selectedIndex == 2
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1),
                  ),
                ),
                onTap: () {
                  _onItemTapped(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person,
                    color: _selectedIndex == 3
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1)),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: _selectedIndex == 3
                        ? Color.fromRGBO(121, 85, 72, 1.0)
                        : Color.fromRGBO(117, 106, 98, 1),
                  ),
                ),
                onTap: () {
                  _onItemTapped(3);
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: _pages[_selectedIndex],
        ),
      ],
    );
  }
}
