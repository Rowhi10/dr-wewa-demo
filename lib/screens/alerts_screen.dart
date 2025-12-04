import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alerts = [
      {
        "title": "Tornado Warning",
        "location": "Baltimore, MD",
        "details": "Seek shelter immediately indoors."
      },
      {
        "title": "Flash Flood Alert",
        "location": "Anne Arundel County",
        "details": "Avoid driving through flooded roads."
      },
    ];

    return ListView.builder(
      itemCount: alerts.length,
      itemBuilder: (context, index) {
        final alert = alerts[index];
        return Card(
          color: Colors.red.shade100,
          child: ListTile(
            title: Text(alert["title"]!),
            subtitle: Text(alert["location"]!),
            trailing: const Icon(Icons.warning),
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(alert["title"]!),
                  content: Text(alert["details"]!),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
