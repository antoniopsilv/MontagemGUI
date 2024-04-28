import 'package:flutter/material.dart';
import 'package:montagemgui/signin_page/signin_page.dart';

void main() => runApp( MyApp()  );

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercicio Montagem GUI",
      home: SignInPage(),
    );
  }
}

