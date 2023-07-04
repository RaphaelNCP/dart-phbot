import 'dart:async';

void main (){
  Stream myStream(int interval, [int? maxCount]) async*{
    int i = 1;
    while(i != maxCount) {
      print("Counting $i");
      await Future.delayed(Duration(seconds: interval));
  
      yield i++;
    }
    print("the stream is fineshed");
  }

  StreamSubscription mySubscriber = myStream(1,10).listen((event) {
    if(event.isEven) {
      print("this number is even");
    }
   }, onError: (e){
    print("An error happened: $e");
   }, onDone: () {
     print("the subscriber is gone");
   });

  print("the main is fineshed");
}