import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String _resultado = 'Parabens';
  final void Function() reiniciar;
  final int pontuacao;
  Resultado(this.pontuacao, this.reiniciar);
  String? get fraseResultado {
    if (pontuacao < 8) {
      return 'Não foi tão boa';
    }
    else if (pontuacao < 12){
      return 'Boa';
    }
    else {
      return 'Excelente';
    }
  }

  Widget build (BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Center(
          child: Text(
              _resultado + ' , Nota: ' + pontuacao.toString() + ' ' + fraseResultado!,
              style: TextStyle(
              color: Colors.blue[600],
              fontSize: 28
            ),
          ),
        ),
        FlatButton(
          onPressed: reiniciar, 
          child: Text(
            'Reiniciar?',
            style: TextStyle(
              color: Colors.blueAccent[200],
              fontSize: 25
            ),  
          )
        )
      ],
    );
  }
}
