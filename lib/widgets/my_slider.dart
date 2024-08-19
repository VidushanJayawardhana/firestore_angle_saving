import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  final double value;
  final void Function(double) onChanged;

  const MySlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      inactiveColor: const Color.fromARGB(255, 171, 207, 236),
      activeColor: Colors.blue,
      thumbColor: const Color.fromARGB(255, 1, 130, 235),
      max: 180.0,
      min: 0.0,
      value: value,
      onChanged: onChanged,
    );
  }
}
