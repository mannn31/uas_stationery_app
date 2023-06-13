import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uas_stationery_app/pages/auth.dart';
import 'package:uas_stationery_app/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBnwEDu-UxOEcfPnGJ9597Ezdh9vDjVKzo',
      appId: '1:22739596663:android:b8f1ff2ad63b82fb311d72',
      messagingSenderId: '22739596663',
      projectId: 'uas-stationery-app',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stationery Shop',
      theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.brown,
          fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
