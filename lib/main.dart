import 'package:flutter/material.dart';
import 'SignupScreen.dart';

void main() {
  runApp(const SaffarniApp());
}

class SaffarniApp extends StatefulWidget {
  const SaffarniApp({super.key});

  @override
  State<SaffarniApp> createState() => _SaffarniAppState();
}

class _SaffarniAppState extends State<SaffarniApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saffarni App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      themeMode: _themeMode,
      home: StartScreen(toggleTheme: _toggleTheme),
    );
  }
}

class StartScreen extends StatelessWidget {
  final VoidCallback toggleTheme;

  const StartScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 42,
                backgroundColor: Colors.white,
                child: Icon(Icons.directions_bus, size: 44, color: Colors.black),
              ),
              const SizedBox(height: 16),
              const Text(
                'GoBus',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Ektar ay wigha w hatla2y otobes 3andena',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  );
                },
                child: const Text('Get Started'),
              ),
              const SizedBox(height: 12),

              TextButton(
                onPressed: toggleTheme,
                child: const Text(
                  'Switch Light/Dark Theme',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}