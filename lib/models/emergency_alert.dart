// lib/models/emergency_alert.dart
class EmergencyAlert {
  final String id;
  final String title;
  final String location;
  final String severity; // Info, Watch, Warning, Emergency
  final String description;
  final String recommendedAction;
  final DateTime time;

  EmergencyAlert({
    required this.id,
    required this.title,
    required this.location,
    required this.severity,
    required this.description,
    required this.recommendedAction,
    required this.time,
  });

  bool get isCritical => severity == 'Warning' || severity == 'Emergency';
}
