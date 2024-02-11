import 'package:flutter/foundation.dart';

class HomeViewModel extends ChangeNotifier{
  int counter = 0;

  void updateCounter(int counter){
    this.counter = counter;
    print(counter);
    notifyListeners();
  }
}