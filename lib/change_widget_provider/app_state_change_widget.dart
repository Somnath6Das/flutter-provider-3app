import 'package:flutter/foundation.dart';
import 'dart:async';

class AppStateChangeWidget extends ChangeNotifier {
  //Change the widgets
  bool change = false;


  void updeteWidget() {
    //its make revarse so it going to bool value true.
    change = !change;
    notifyListeners();
  }
}
