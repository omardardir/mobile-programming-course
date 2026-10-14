import 'package:flutter/material.dart';
import 'BusScreen.dart';

class WelcomeScreen extends StatelessWidget {
  final String name;

  const WelcomeScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.waving_hand, size: 72, color: Colors.green),
                const SizedBox(height: 16),
                Text(
                  'Welcome, $name!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Your next trip is just a few taps away.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BusScreen(),
                      ),
                    );
                  },
                  child: const Text('Browse Destinations'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
