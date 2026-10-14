import 'package:flutter/material.dart';

class BusScreen extends StatelessWidget {
  const BusScreen({super.key});

  final List<Map<String, String>> busRoutes = const [
    {'name': 'Cairo to Alexandria', 'category': 'Express Route'},
    {'name': 'Cairo to Dahab', 'category': 'Overnight Trip'},
    {'name': 'Cairo to Sharm El-Sheikh', 'category': 'Luxury Bus'},
    {'name': 'Alexandria to Matrouh', 'category': 'Coastal Route'},
    {'name': 'Cairo to Luxor', 'category': 'Upper Egypt Line'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Buses'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: busRoutes.length,
          itemBuilder: (context, index) {
            final route = busRoutes[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.directions_bus, color: Colors.green),
                title: Text(route['name']!),
                subtitle: Text(route['category']!),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}