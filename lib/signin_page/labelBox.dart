import 'package:flutter/material.dart';

class labelBox extends StatelessWidget {

  final String label;
  final double? font;

  labelBox(this.label, this.font);

  @override
  Widget build(BuildContext) {
    return Text(
        label,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: font,
        ),
      );
  }
}