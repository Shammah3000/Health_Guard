import 'package:flutter/material.dart';
import '../models/vital_signs.dart';

class VitalsDashboard extends StatelessWidget {
  const VitalsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final vitals = VitalSigns(
      heartRate: 78,
      spo2: 97,
      temperature: 36.8,
    );

    return Scaffold(
      appBar:AppBar(
        title: const Text('Patient Vitals'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            VitalCard(
              label: 'Heart Rate',
              value: '${vitals.heartRate}bpm',
              icon: Icons.favorite,
              ),
            VitalCard(
              label: 'Temperature',
              value: '${vitals.temperature} °C',
              icon: Icons.thermostat,
            ),  
          ],
        ),
      ),
    ); 
  }
}

class VitalCard extends StatelessWidget{
  final String label;
  final String value;
  final IconData icon;

  const VitalCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, size:32),
        title: Text(label),
        trailing: Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}