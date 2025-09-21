import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Panel / యాజమాన్య ప్యానెల్")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ListTile(
            leading: Icon(Icons.price_change),
            title: Text("Edit Prices / ధరలు సవరించండి"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Send Notifications / నోటిఫికేషన్లు పంపండి"),
          ),
          ListTile(
            leading: Icon(Icons.receipt_long),
            title: Text("Booking & Sales Records / బుకింగ్స్ & అమ్మకాలు"),
          ),
        ],
      ),
    );
  }
}
