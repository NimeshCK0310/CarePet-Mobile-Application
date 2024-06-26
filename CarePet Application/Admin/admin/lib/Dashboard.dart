import 'package:admin/AdminLogin/admin_auth.dart';
import 'package:admin/Doctors/chanel.dart';
import 'package:admin/Home/Popular_News.dart';
import 'package:admin/Location/admin_panel.dart';
import 'package:admin/Trainers/train.dart';
import 'package:admin/YoutubeVideo/addVideo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AdminDashboard(),
    );
  }
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  void _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const AdminSignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DASHBOARD'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 7.0 / 8.0,
        children: <Widget>[
          DashboardCard(
            title: 'LOCATIONS',
            icon: Icons.location_city,
            color: Colors.lightBlue,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AdminPanel(title: 'Locations')),
              );
            },
          ),
          DashboardCard(
            title: 'YouTube Videos',
            icon: Icons.video_call,
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VideoManagementPage()),
              );
            },
          ),
          DashboardCard(
            title: 'VETRANALY',
            icon: Icons.medical_services,
            color: Colors.pink,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DoctorManagementPage()),
              );
            },
          ),
          DashboardCard(
            title: 'TRAINERS',
            icon: Icons.medical_information,
            color: Colors.pink,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const trainPage()),
              );
            },
          ),
          DashboardCard(
            title: 'Popular News',
            icon: Icons.newspaper,
            color: Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AdminNewsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: InkWell(
        onTap: onTap ??
            () {
              print('Card tapped.');
            },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50, color: color), // Adjusted icon size
            const SizedBox(height: 16.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'View | Add | Delete',
              style: TextStyle(
                  color: Colors.grey, fontSize: 12), // Reduced font size
            ),
          ],
        ),
      ),
    );
  }
}
