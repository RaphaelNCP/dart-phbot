
import 'dart:io';

import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String phBot = 'phBot:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().phBotStream(1, 10);
  var subscriber = myStream.listen((event) {
    print('                                              PhBot is activated for $event seconds');
  }, onDone: (){
    print("PhBot is finishing its work, ask the last question");
    a = false;
  });

  print('-- Iniciando o phBot, aguarde..--');

  await BotClock().clock(2);

  print('phBot:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');

    await BotClock().clock(2);

    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(phBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      
      BotClock().clock(2);
      
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(phBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(phBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando phBot--');
}
