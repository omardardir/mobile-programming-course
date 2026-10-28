import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'Destination.dart';
import 'FlagImage.dart';

class BusScreen extends StatefulWidget {
  const BusScreen({super.key});

  @override
  State<BusScreen> createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  List<Destination> destinations = [];

  @override
  void initState() {
    super.initState();
    fetchDestinations();
  }

  Future<void> fetchDestinations() async {
    try {
      final response = await Dio().get(
        'https://countries.dev/countries?fields=name,capital,region,population,alpha2Code',
      );
      final data = response.data as List;
      setState(() {
        destinations = data
            .map((e) => Destination.fromJson(e as Map<String, dynamic>))
            .toList();
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Buses'),
      ),
      body: SafeArea(
        child: destinations.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  final d = destinations[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      leading: FlagImage(url: d.flagUrl),
                      title: Text(d.name),
                      subtitle: Text('${d.capital} • ${d.region}'),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
