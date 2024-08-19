import 'package:firestore_app_v1/models/angle_model.dart';
import 'package:firestore_app_v1/services/database_service.dart';
import 'package:firestore_app_v1/widgets/my_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseService _databaseService = DatabaseService();
  double _currentAngle1 = 0.0;
  double _currentAngle2 = 0.0;
  double _currentAngle3 = 0.0;
  double _currentAngle4 = 0.0;
  double _currentAngle5 = 0.0;
  double _currentAngle6 = 0.0;

  double convertToDouble(double angle) {
    angle = (angle * 100).round() / 100;
    return angle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Control Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Angle 1 value
            Text(
              "Angle 1: ${_currentAngle1.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //angle 1 slider
            MySlider(
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

            // Angle 2 value
            Text(
              "Angle 2: ${_currentAngle2.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Angle 2 slider
            MySlider(
              value: _currentAngle2,
              onChanged: (value) {
                setState(
                  () {
                    _currentAngle2 = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),

            // Angle 3 value
            Text(
              "Angle 3: ${_currentAngle3.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Angle 3 slider
            MySlider(
              value: _currentAngle3,
              onChanged: (value) {
                setState(
                  () {
                    _currentAngle3 = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),

            // Angle 4 value
            Text(
              "Angle 4: ${_currentAngle4.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Angle 4 slider
            MySlider(
              value: _currentAngle4,
              onChanged: (value) {
                setState(
                  () {
                    _currentAngle4 = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),

            // Angle 5 value
            Text(
              "Angle 5: ${_currentAngle5.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Angle 5 slider
            MySlider(
              value: _currentAngle5,
              onChanged: (value) {
                setState(
                  () {
                    _currentAngle5 = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),

            // Angle 6 value
            Text(
              "Angle 6: ${_currentAngle6.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Angle 6 slider
            MySlider(
              value: _currentAngle6,
              onChanged: (value) {
                setState(
                  () {
                    _currentAngle6 = value;
                  },
                );
              },
            ),

            //Submit button
            ElevatedButton(
              onPressed: () {
                // Add the angle to the database
                _databaseService.addAngle(
                  AngleModel(
                    angle1: _currentAngle1.round(),
                    angle2: _currentAngle2.round(),
                    angle3: _currentAngle3.round(),
                    angle4: _currentAngle4.round(),
                    angle5: _currentAngle5.round(),
                    angle6: _currentAngle6.round(),
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
