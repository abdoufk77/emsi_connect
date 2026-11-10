import 'package:flutter/material.dart';

// import 'package:emsi_connect/screens/home_page.dart';
// import 'screens/courses_page.dart';
// import 'screens/profile_page.dart';
import 'screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emsi connect',
      debugShowCheckedModeBanner: false,
      // home: const ProfilePage(),
      // home: const CoursesPage(),
      home: const LoginPage(),
    );
  }
}
