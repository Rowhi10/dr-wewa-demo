// lib/data/sample_alerts.dart
import 'package:dr_wewa/models/emergency_alert.dart';

final sampleAlerts = <EmergencyAlert>[
  EmergencyAlert(
    id: '1',
    title: 'Tornado Emergency',
    location: 'Baltimore, MD',
    severity: 'Emergency',
    description:
        'A confirmed large tornado is on the ground. Life-threatening situation.',
    recommendedAction:
        'Move to an interior room on the lowest floor, away from windows. Protect your head.',
    time: DateTime.now().subtract(const Duration(minutes: 5)),
  ),
  EmergencyAlert(
    id: '2',
    title: 'Flash Flood Warning',
    location: 'Anne Arundel County, MD',
    severity: 'Warning',
    description:
        'Heavy rainfall is causing flash flooding in low-lying and urban areas.',
    recommendedAction:
        'Do not walk or drive through flood waters. Move to higher ground.',
    time: DateTime.now().subtract(const Duration(minutes: 30)),
  ),
  EmergencyAlert(
    id: '3',
    title: 'Heat Advisory',
    location: 'Prince George\'s County, MD',
    severity: 'Watch',
    description:
        'Heat index values expected to reach dangerous levels this afternoon.',
    recommendedAction:
        'Stay hydrated, limit outdoor activity, and check on vulnerable individuals.',
    time: DateTime.now().subtract(const Duration(hours: 3)),
  ),
];
