import 'package:flutter/material.dart';

class DairyScreen extends StatelessWidget {
  const DairyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"name": "Milk / పాలు", "price": "₹50/L"},
      {"name": "Curd / పెరుగు", "price": "₹60/kg"},
      {"name": "Paneer / పనీర్", "price": "₹280/kg"},
      {"name": "Ghee / నెయ్యి", "price": "₹650/L"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Dairy Products / పాల ఉత్పత్తులు")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.local_drink),
            title: Text(items[index]["name"]!),
            trailing: Text(items[index]["price"]!),
          );
        },
      ),
    );
  }
}

class VegetableScreen extends StatelessWidget {
  const VegetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"name": "Tomato / టమోటా", "price": "₹40/kg"},
      {"name": "Onion / ఉల్లి", "price": "₹50/kg"},
      {"name": "Potato / బంగాళాదుంప", "price": "₹30/kg"},
      {"name": "Carrot / గాజర", "price": "₹60/kg"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Vegetables / కూరగాయలు")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.eco),
            title: Text(items[index]["name"]!),
            trailing: Text(items[index]["price"]!),
          );
        },
      ),
    );
  }
}
