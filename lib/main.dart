import 'package:flutter/material.dart';
import 'package:testee/resultado.dart';
import 'questionario.dart';
void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {

    int _perguntaSelecionada = 0;
    int _pontuacaoTotal = 0;
    
    void _responder(int pontuacao) {
      setState(() {
          _perguntaSelecionada++;
          _pontuacaoTotal += pontuacao;
      });
    }

    final _perguntas = const [{
        'texto': 'Qual sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'nota': 10}, 
          {'texto': 'Vermelho', 'nota': 5}, 
          {'texto': 'Verde', 'nota': 3}, 
          {'texto': 'Branco', 'nota': 1}
        ]
      }, {
        'texto': 'Qual seu animal favorito?',
        'respostas': [
          {'texto': 'Cobra', 'nota': 8}, 
          {'texto': 'Leão', 'nota': 3}, 
          {'texto': 'Gato', 'nota': 4}, 
          {'texto': 'Cachorro', 'nota': 9}
        ]
      }, {
        'texto': 'Qual seu instrutor favorito?',
        'respostas': [
          {'texto': 'Maria', 'nota': 3}, 
          {'texto': 'João', 'nota': 6}, 
          {'texto': 'Leo', 'nota': 9}, 
          {'texto': 'Juliano', 'nota': 2}
        ]
      },
    ];

    bool get temPerguntaSelecionada {
      return _perguntaSelecionada < _perguntas.length;
    }

    void reiniciar() {
      setState(() {
        _perguntaSelecionada = 0;
        _pontuacaoTotal = 0;        
      });
    }


   /* void _diminuir() {
      setState(() {
        _perguntaSelecionada--;
      });
    }*/
    
    @override
    Widget build(BuildContext context) {

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada 
                ? Questionario(perguntaSelecionada: _perguntaSelecionada, responder: _responder, perguntas: _perguntas)
                : Resultado(_pontuacaoTotal, reiniciar)
        ),
      );
    }
}

class PerguntaApp extends StatefulWidget {
    /*void Function() funcaoqueRetornaOutra() {
      return () {
        print(perguntas[0]);
      };
    }*/

    _PerguntaAppState createState() {
    // TODO: implement createState
    return _PerguntaAppState();
  }


}