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
      max: 90.0,
      min: 0.0,
      value: value,
      onChanged: onChanged,
    );
  }
}
