import 'package:flutter/material.dart';
import 'package:navigation/list_slider.dart';

class SelectColors extends StatefulWidget {
  const SelectColors({Key? key}) : super(key: key);

  @override
  State<SelectColors> createState() => _SelectColorsState();
}

class _SelectColorsState extends State<SelectColors> {
  double _redValue = 0;

  double _greenValue = 0;
  double _blueValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Your Colour"),
        centerTitle: true,
      ),
      body: Column(children: [
        ListSlider(
            currentValue: _redValue,
            onSliderChanged: (value) {
              setState(() {
                _redValue = value;
              });
            }),
        ListSlider(
            currentValue: _blueValue,
            onSliderChanged: (value) {
              setState(() {
                _blueValue = value;
              });
            }),
        ListSlider(
            currentValue: _greenValue,
            onSliderChanged: (value) {
              setState(() {
                _greenValue = value;
              });
            }),
        //this is for circle
        Container(
            margin: EdgeInsets.all(80),
            padding: EdgeInsets.all(80),
            decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: Color.fromRGBO(_redValue.toInt(), _greenValue.toInt(),
                    _blueValue.toInt(), 1))),
        //another container
        ElevatedButton(
          child: Text('Select This Colour'),
          onPressed: () {},
        ),
      ]),
    );
  }
}
