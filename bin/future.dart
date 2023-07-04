

void main() {

  /*Future myFuture = Future(() {
    print("Going back to the future");
    return 21;
  }).then((value) => print("the value is $value"));

  Future<int> myFutureFunc()async{
    print("i have a function in the future");
    await Future.delayed(Duration(seconds: 5));
    return 12;
  }

  myFutureFunc().then((value) => print("my function value is: $value")).onError((error, stackTrace) => print('An Error ocurred'));
*/

  Future<int> myFutureErrorFunc(int a, int b) async {

    try{
      if(a>b){
        throw Exception();
      }

      print("i have a functional func");
      await Future.delayed(Duration(seconds: 5));
      return 42;

    }catch(e){
      print("An error occurred: $e");
      return 42;

    }finally{
      print("the future is finally over");
    }
  }

  myFutureErrorFunc(1, 2).then((value) => print('the value is: $value'));

  print("Done with main");
}