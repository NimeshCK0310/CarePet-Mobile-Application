import 'package:admin/AdminLogin/admin_auth.dart';
import 'package:admin/Dashboard.dart';
//import 'package:admin/admin_panel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAW59cksebjXkxE2RTth1-DCIFbgXse-FY",
          projectId: "carepet-b8bd3",
          messagingSenderId: "388589472841",
          appId: "1:388589472841:web:2e23c0bb91ef0d9c8c8398"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Admin',
      initialRoute: '/',
      routes: {
        '/': (context) => const AdminSignIn(),
        '/admin': (context) => const AdminDashboard(),
      },
    );
  }
}
