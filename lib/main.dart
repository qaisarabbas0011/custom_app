// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'loginpage.dart';
// import "user_signup.dart";

// void main() {

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   Future<bool> checkUserSignedUp() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('isRegistered') ?? false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login & Signup App',
//       debugShowCheckedModeBanner: false,
//       home: FutureBuilder<bool>(
//         future: checkUserSignedUp(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasData && snapshot.data!) {
//             return const LoginPage();
//           } else {
//             return const LoginPage(); // Always show login first
//           }
//         },
//       ),
//     );
//   }
// }

// //userSignUp
// // import 'package:flutter/material.dart';
// // import 'user_signup.dart';  // Make sure this matches the path to your UserProfile file

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'User Profile App',
// //       theme: ThemeData(
// //         primarySwatch: Colors.red,
// //       ),
// //       home: const UserProfile(),
// //     );
// //   }
// // }

// Using Blub icon
import 'package:flutter/material.dart';
import 'blub_screen.dart';

import 'advance_blub_screen.dart';
import 'stack.dart';

void main() => runApp(BulbApp());

class BulbApp extends StatelessWidget {
  const BulbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StackDemoScreen());
  }
}
