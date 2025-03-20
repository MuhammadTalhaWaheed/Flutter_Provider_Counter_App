import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier {
  int value = 0;

  Counter(this.value);

  void increment() {
    value++;
    notifyListeners();
  }
}
