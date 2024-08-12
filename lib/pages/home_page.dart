import 'package:firestore_app_v1/models/angle_model.dart';
import 'package:firestore_app_v1/services/database_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseService _databaseService = DatabaseService();
  double _currentAngle1 = 0.0;

  void convertToDouble() {
    _currentAngle1 = (_currentAngle1 * 100).round() / 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Angle 1: ${_currentAngle1.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Slider(
              max: 90.0,
              min: 0.0,
              value: _currentAngle1,
              onChanged: (value) {
                setState(
                  () {
                    _currentAngle1 = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                convertToDouble();
                _databaseService.addAngle(
                  AngleModel(
                    angle: _currentAngle1,
                  ),
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
