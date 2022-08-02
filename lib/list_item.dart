import 'package:flutter/material.dart';

class Listitem extends StatelessWidget {
  final Color color;
  const Listitem({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      margin: EdgeInsets.only(bottom: 8),
    );
  }
}
