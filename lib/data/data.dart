import 'package:flutter/foundation.dart';

class Height with ChangeNotifier {
  var height = 175.0;

  void changeHeight(double value) {
    height = value;
    notifyListeners();
  }
}

class Age with ChangeNotifier {
  var age = 20;

  void addAge() {
    age++;
    notifyListeners();
  }

  void substractAge() {
    age--;
    notifyListeners();
  }
}

class Weight with ChangeNotifier {
  var _weight = 60;

  get weight => _weight;

  set weight(weight) {
    _weight = weight;
    notifyListeners();
  }

  void addWeight() {
    weight++;
    notifyListeners();
  }

  void substractWeight() {
    weight--;
    notifyListeners();
  }
}

class Gender with ChangeNotifier {
  var isMale = false;
  var isFemale = false;

  void changeGenderToMale() {
    isMale = true;
    isFemale = false;
    notifyListeners();
  }

  void changeGenderToFemale() {
    isMale = false;
    isFemale = true;
    notifyListeners();
  }
}

class Result with ChangeNotifier {
  calculateBMI( int weight, double height) {
    return weight*10000/(height*height);
  }

}

