import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.local_hospital),
          title: Text("Emergency Medical Center"),
          subtitle: Text("Capacity available"),
        ),
        ListTile(
          leading: Icon(Icons.house),
          title: Text("Red Cross Shelter"),
          subtitle: Text("Open"),
        ),
      ],
    );
  }
}
