import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> checkUserSignedUp() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isRegistered') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login & Signup App',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<bool>(
        future: checkUserSignedUp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData && snapshot.data!) {
            return const LoginPage();
          } else {
            return const LoginPage(); // Always show login first
          }
        },
      ),
    );
  }
}
