import '../../vitals/models/vital_signs.dart';

enum AlertLevel {normal, warning, critical}

AlertLevel checkVitals(VitalSigns v) {
  if (v.heartRate > 120 || v.spo2 < 90) {
    return AlertLevel.critical;
  }
  if (v.heartRate > 100 || v.spo2 < 94) {
    return AlertLevel.warning;
  }
  return AlertLevel.normal;
} 