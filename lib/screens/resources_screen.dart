import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final resources = [
      {
        'name': 'Red Cross Shelter',
        'type': 'Shelter',
        'status': 'Open',
      },
      {
        'name': 'Emergency Medical Clinic',
        'type': 'Medical',
        'status': 'Limited capacity',
      },
      {
        'name': 'Food Distribution Center',
        'type': 'Food & Water',
        'status': 'Open until 9 PM',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: resources.length,
      itemBuilder: (context, index) {
        final res = resources[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Icon(
              res['type'] == 'Medical'
                  ? Icons.local_hospital
                  : res['type'] == 'Shelter'
                      ? Icons.house
                      : Icons.local_dining,
            ),
            title: Text(res['name']!),
            subtitle: Text('${res['type']} • ${res['status']}'),
          ),
        );
      },
    );
  }
}
