import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routes = [
      {
        'name': 'Central High School Shelter',
        'address': '123 Shelter Rd, Baltimore, MD',
        'status': 'Open – 150/300 capacity',
        'mapsUrl':
            'https://www.google.com/maps/search/?api=1&query=Central+High+School+Baltimore'
      },
      {
        'name': 'Community Recreation Center',
        'address': '456 Safe St, Baltimore, MD',
        'status': 'Open – Pet friendly',
        'mapsUrl':
            'https://www.google.com/maps/search/?api=1&query=Community+Recreation+Center+Baltimore'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: routes.length,
      itemBuilder: (context, index) {
        final r = routes[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(r['name']!),
            subtitle: Text('${r['address']} • ${r['status']}'),
            trailing: const Icon(Icons.directions),
            onTap: () => launchUrlString(r['mapsUrl']!),
          ),
        );
      },
    );
  }
}
