import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width <= 800;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 232, 214, 1.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/images/logo.png',
            //   width: 200,
            //   height: 200,
            // ),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3237/3237837.png',
              width: 80,
              height: 80,
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: isSmallScreen ? 24.0 : 32.0,
              ),
            ),
            Text(
              'Stationery Shop',
              style: TextStyle(
                fontSize: isSmallScreen ? 29.0 : 37.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              margin: isSmallScreen
                  ? EdgeInsets.only(left: 0, right: 0)
                  : EdgeInsets.only(left: 200, right: 200),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              margin: isSmallScreen
                  ? EdgeInsets.only(left: 0, right: 0)
                  : EdgeInsets.only(left: 200, right: 200),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              margin: isSmallScreen
                  ? EdgeInsets.only(left: 0, right: 0)
                  : EdgeInsets.only(left: 200, right: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(203, 153, 126, 1.0)),
                    onPressed: () {
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
