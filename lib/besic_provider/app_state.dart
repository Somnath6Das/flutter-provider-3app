import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  int temp = 017166;

  //Like setState method of provider.
  void updateTemp(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  //Timer function
  int start = 0;

  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

  //Provider with Async 
  String name = "helloworldon9@gmail.com";
  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed( Duration(seconds: 5), () {
      updateName(name);
    });
  }
  
  
  
}
