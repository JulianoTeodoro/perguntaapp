import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  
    final int perguntaSelecionada;
    final void Function(int) responder;
    final List<Map<String, Object>> perguntas;
        
    Questionario({required this.perguntaSelecionada, required this.responder, required this.perguntas});    

    bool get temPerguntaSelecionada {
      return perguntaSelecionada < perguntas.length;
    }

  Widget build (BuildContext context) {

    List<Map<String, Object>> respostas = perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>> ;
    var widgets = respostas.map((resp) => 
    Resposta(
      resp['texto'].toString() + " : " + resp['nota'].toString(), 
      () => responder(resp['nota'] as int)
      ));

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...widgets,
      ],
    );
  }
}