import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: ListTile(
            title: const Text("Central High School Shelter"),
            subtitle: const Text("Open evacuation route"),
            trailing: const Icon(Icons.directions),
            onTap: () {
              launchUrlString(
                "https://www.google.com/maps/search/central+high+school+baltimore",
              );
            },
          ),
        ),
      ],
    );
  }
}
