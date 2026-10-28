class Destination {
  final String name;
  final String capital;
  final String region;
  final int population;
  final String flagUrl;

  const Destination({
    required this.name,
    required this.capital,
    required this.region,
    required this.population,
    required this.flagUrl,
  });

  factory Destination.fromJson(Map<String, dynamic> json) {
    final capital = json['capital'] as String?;
    final code = (json['alpha2Code'] as String).toLowerCase();

    return Destination(
      name: json['name'],
      capital: (capital == null || capital.isEmpty) ? 'N/A' : capital,
      region: json['region'],
      population: json['population'],
      flagUrl: 'https://flagcdn.com/w80/$code.png',
    );
  }
}
