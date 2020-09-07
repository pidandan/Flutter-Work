// class MyModel with  ChangeNotifier{
  //                                               <--- MyModel
  // MyModel({this.counter = 0});

  // int _counter = 0;
  // get counter =>_counter;
  //  void increment() {
  //   _count++;
  //   notifyListeners();
  // }

  // Future<void> incrementCounter() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   counter++;
  //   print(counter);
  //   notifyListeners();
  // }
// }
import 'package:flutter/foundation.dart';
class MyModel with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  void incrementCounter() async{
    await Future.delayed(Duration(seconds: 2));
    _counter++;
    print(counter);
    notifyListeners();
  }
}

