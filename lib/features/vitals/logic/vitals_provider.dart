import 'package:flutter/material.dart';
import '../models/vital_signs.dart';

class VitalsProvider extends ChangeNotifier {
  VitalSigns _vitals = VitalSigns(
    heartRate: 78,
    spo2: 97,
    temperature: 36.8,
  );

  VitalSigns get vitals => _vitals;

  void updateVitals(VitalSigns newVitals) {
    _vitals = newVitals;
    notifyListeners();
  }
}