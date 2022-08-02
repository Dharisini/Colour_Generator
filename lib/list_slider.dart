import 'package:flutter/material.dart';

class ListSlider extends StatelessWidget {
  ListSlider({required this.currentValue, required this.onSliderChanged});

  final double currentValue;
  final Function(double) onSliderChanged;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: currentValue,
      min: 0,
      max: 255,
      divisions: 255,
      onChanged:onSliderChanged,
    );
  }
}
