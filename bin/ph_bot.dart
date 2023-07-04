import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String phBot = 'phBot:\n';
  var a = true;
  String usuario = '';

  /*var myStream = BotClock().phBotStream(1, 10);
  // ignore: unused_local_variable
  var subscriber = myStream.listen((event) {
    print('                                              PhBot está ativo a $event secondos');
  }, onDone: (){
    print("PhBot está finalizando, faça sua ultima pergunta");
    a = false;
  });*/

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
    } else if (GoodManners(usuario).isthisManners()) {
      GoodManners(usuario).goodManners();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(2);
      print(phBot +
          ' Não tenho conhecimento de como responder isso \n Sinto muito ');
      print(phBot + ' Ainda precisa dos meu conhecimentos ou vai dizer Adeus?');
    }
  } while (a);

  print('--Encerrando phBot--');
}
