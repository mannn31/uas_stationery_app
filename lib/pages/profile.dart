import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Container(
        // Isi halaman utama sesuai dengan tab yang aktif
        child: Center(
          child: Column(
            children: [
              Text('Halaman Profile'),
              Text(
                '${users?.email}',
                style: TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
