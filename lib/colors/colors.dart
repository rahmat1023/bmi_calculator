import 'package:flutter/material.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

class ColorTheme with ChangeNotifier {
  MaterialColor color = Colors.pink;

  List<Map<String, Object>> colorSelection = [
    {'title' : 'Blue', 'color' : Colors.blue},
    {'title' : 'Pink', 'color' : Colors.pink},
    {'title' : 'Red', 'color' : Colors.red},
    {'title' : 'Green', 'color' : Colors.green},
    {'title' : 'Indigo', 'color' : Colors.indigo},
    {'title' : 'Brown', 'color' : Colors.brown},
  ];

  void changeColors(MaterialColor newColor) {
    color = newColor;
    notifyListeners();
  }
}