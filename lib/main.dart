import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:univolve_app/pages/AllAuthPages/auth_page.dart';
import 'package:univolve_app/pages/AllAuthPages/login_page.dart';
import 'package:univolve_app/pages/AllAuthPages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Univolve',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(),
    );
  }
}
