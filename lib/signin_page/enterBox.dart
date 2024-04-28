import 'package:flutter/material.dart';

class enterBox extends StatelessWidget {

  final String text;

  enterBox(this.text);

  @override
  Widget build(BuildContext) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: text,
      ),
    );
  }
}