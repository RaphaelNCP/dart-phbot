
class GoodManners{
  String question;
  bool isThisGoodManners = false;
  String phBot = "PhBot:\n";

  GoodManners(this.question);

  bool isthisManners(){
    if(question.contains("oi")||
       question.contains("ola")||
       question.contains("Oi")||
       question.contains("Ola")||
       question.contains("obrigado")||
       question.contains("obrigada")||
       question.contains("Obrigado")||
       question.contains("Obrigada")||
       question.contains("bom")||
       question.contains("boa")||
       question.contains("tarde")||
       question.contains("noite")||
       question.contains('de nada')||
       question.contains("De nada")){

      isThisGoodManners = true;
    }

    return isThisGoodManners;
  }

  goodManners(){
    if(question.contains('Bom dia')|| question.contains('bom dia')){
      print(phBot + " Bom dia, oh grande usuário");
    } else if (question.contains('Bom tarde')|| question.contains('bom tarde')){
      print(phBot + " Bom tarde, oh grande usuário");
    } else if (question.contains('Bom noite')|| question.contains('bom noite')){
      print(phBot + " Bom noite, oh grande usuário");
    } else if (question.contains('oi')|| question.contains('Oi')|| question.contains("ola")||question.contains("Ola")){
      print(phBot + " Saudações, oh grande usuário");
    } else if (question.contains('obrigado')|| question.contains('Obrigado')|| question.contains("Obrigada")|| question.contains("obrigada")){
      print(phBot + " Ao seu dispor");
    }
  }

}