
import 'dart:io';

import 'questions/time_questions.dart';

void main() async {
  String phBot = 'phBot:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o phBot, aguarde..--');

  print('phBot:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(phBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      print(phBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(phBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando phBot--');
}
