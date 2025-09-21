import 'package:flutter/material.dart';
import 'data.dart';
import 'insurance_plans.dart';
import 'admin.dart';

void main() {
  runApp(const VedanshPatelMarketApp());
}

class VedanshPatelMarketApp extends StatelessWidget {
  const VedanshPatelMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vedansh Patel Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vedansh Patel Market\n(Dairy, Vegetables & Insurance)",
            textAlign: TextAlign.center),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _menuButton(context, "🥛 Dairy Products", const DairyScreen()),
          _menuButton(context, "🥦 Vegetables", const VegetableScreen()),
          _menuButton(context, "🛡 Insurance Plans", const InsurancePlansScreen()),
          _menuButton(context, "🛠 Admin Panel", const AdminPanel()),
        ],
      ),
    );
  }

  Widget _menuButton(BuildContext context, String text, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: Colors.lightGreen,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Text(text, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
