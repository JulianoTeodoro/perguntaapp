import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120.0,
        width: 200.0,
        margin: EdgeInsets.all(10),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.red[600],
            fontSize: 28
          ),
        )
      ),
    );
  }
}
