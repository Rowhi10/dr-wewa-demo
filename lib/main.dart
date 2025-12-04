import 'package:flutter/material.dart';
import 'screens/alerts_screen.dart';
import 'screens/routes_screen.dart';
import 'screens/resources_screen.dart';

void main() {
  runApp(const DrWewaApp());
}

class DrWewaApp extends StatelessWidget {
  const DrWewaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DR.WEWA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final pages = const [
    AlertsScreen(),
    RoutesScreen(),
    ResourcesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DR.WEWA Emergency System")),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) => setState(() => index = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.warning), label: "Alerts"),
          NavigationDestination(icon: Icon(Icons.map), label: "Evacuation"),
          NavigationDestination(icon: Icon(Icons.home), label: "Resources"),
        ],
      ),
    );
  }
}
