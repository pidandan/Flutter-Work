import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;
  int get count => _count;

 // 做加法
  void increment() {
    _count++;
    notifyListeners();
  }

// 做减法
  void subtraction(){
    _count--;
    notifyListeners();
  }
}