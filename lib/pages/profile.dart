import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 10.0,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('assets/images/profile.png'),
                radius: 40,
              ),
            ),
            SizedBox(height: 15),
            Text(
              '${users?.email}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text('Logout'),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 232, 214, 1.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person,
                        color: Color.fromRGBO(121, 85, 72, 1.0)),
                    title: Text(
                      'Account Setting',
                      style: TextStyle(
                        color: Color.fromRGBO(121, 85, 72, 1.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.help,
                        color: Color.fromRGBO(121, 85, 72, 1.0)),
                    title: Text(
                      'Help Center',
                      style: TextStyle(
                        color: Color.fromRGBO(121, 85, 72, 1.0),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.headset_mic,
                        color: Color.fromRGBO(121, 85, 72, 1.0)),
                    title: Text(
                      'Chat with Admin',
                      style: TextStyle(
                        color: Color.fromRGBO(121, 85, 72, 1.0),
                      ),
                    ),
                    onTap: () {},
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
