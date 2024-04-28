import 'dart:ffi';
import 'package:flutter/material.dart';
import './labelBox.dart';
import './enterBox.dart';

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text("Exercicio Montagem GUI"),
          backgroundColor: Colors.blue,

        ),
        body: _desenharBody(context),
      );
  }

  Widget _desenharBody(context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          labelBox("TELA DE CADASTRO",32.0),
          SizedBox(height: 8.0),
          labelBox("NOME",24.0),
          SizedBox(height: 8.0),
          enterBox("Digite o nome"),
          SizedBox(height: 8.0),
          labelBox("ENDEREÇO",24.0),
          SizedBox(height: 8.0),
          enterBox("Digite o endereço"),
          SizedBox(height: 8.0),
          labelBox("EMAIL",24.0),
          SizedBox(height: 8.0),
          enterBox("Digite o e-mail"),
          SizedBox(height: 8.0),

          Row(
            children: <Widget>[
              Spacer(flex: 2), // Defaults to a flex of one.
              ElevatedButton(
                child: Text(
                  "Cancelar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                onPressed:() { _exibeMsg(context,"Cancelar");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),

                ),
              ),
              Spacer(),
              ElevatedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () {  _exibeMsg(context,"Salvar");
                  },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),

                ),
              ),
            ],
          )
         ],
      ),
    );
  }

}

// Função privada para exiber mensagens do Dialog
Future<void> _exibeMsg(BuildContext context, String texto) {

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Basic dialog'),
        content: Text( 'Botão selecionado: ' +texto,
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

