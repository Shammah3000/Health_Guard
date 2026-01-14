class BluetoothService {
  Stream<Map<String, dynamic>> getVitalsStream() async* {
    while(true) {
      await Future.delayed(const Duration(seconds: 3));
      yield {
        'heartRate': 75 + (DateTime.now().second % 5),
        'spo2': 96,
        'temperature': 36.5,
      };
    }
  }
}