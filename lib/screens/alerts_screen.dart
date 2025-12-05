import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/sample_alerts.dart';
import '../models/emergency_alert.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  Color _severityColor(String severity) {
    switch (severity) {
      case 'Emergency':
        return Colors.red.shade700;
      case 'Warning':
        return Colors.orange.shade700;
      case 'Watch':
        return Colors.amber.shade700;
      default:
        return Colors.blueGrey.shade600;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Emergency banner shows if any alert is critical
    final hasCritical =
        sampleAlerts.any((alert) => alert.isCritical); // from model

    return Column(
      children: [
        if (hasCritical)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            color: Colors.red.shade900,
            child: Row(
              children: const [
                Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.white,
                  size: 28,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'EMERGENCY ALERTS ACTIVE\nFollow official instructions immediately.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: sampleAlerts.length,
            itemBuilder: (context, index) {
              final EmergencyAlert alert = sampleAlerts[index];
              final color = _severityColor(alert.severity);
              final timeString = DateFormat('h:mm a').format(alert.time);

              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                elevation: 3,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: color,
                    child: const Icon(
                      Icons.warning,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(alert.title),
                  subtitle: Text('${alert.location} • $timeString'),
                  trailing: Text(
                    alert.severity.toUpperCase(),
                    style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      builder: (_) => _AlertDetailSheet(alert: alert),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AlertDetailSheet extends StatelessWidget {
  final EmergencyAlert alert;

  const _AlertDetailSheet({required this.alert});

  @override
  Widget build(BuildContext context) {
    final color = Colors.red.shade700;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning_amber_rounded, color: color, size: 28),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    alert.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              alert.location,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            const SizedBox(height: 16),
            const Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(alert.description),
            const SizedBox(height: 16),
            const Text(
              'Recommended Action',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(alert.recommendedAction),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text('Close'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
