import 'package:bmi/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './colors/colors.dart';
import './screens/main_screen.dart';
import './screens/result_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Gender()),
        ChangeNotifierProvider(create: (context) => Height()),
        ChangeNotifierProvider(create: (context) => Weight()),
        ChangeNotifierProvider(create: (context) => Age()),
        ChangeNotifierProvider(create: (context) => Result()),
        ChangeNotifierProvider(create: (context) => ColorTheme()),
      ],
      child: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorTheme colorTheme = Provider.of<ColorTheme>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(brightness: Brightness.light),
        primarySwatch: colorTheme.color,
        accentColor: Colors.grey[300],
        backgroundColor: Colors.grey[100],
        highlightColor: colorTheme.color,
        hintColor: Colors.grey[300],
        iconTheme: IconThemeData(
          color: Colors.grey[300],
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.grey[700],
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.grey[700],
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            color: Colors.grey[700],
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          button: TextStyle(
            color: Colors.grey[300],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(brightness: Brightness.dark),
        primarySwatch: primaryBlack,
        accentColor: Colors.grey[700],
        backgroundColor: Colors.grey[900],
        highlightColor: colorTheme.color,
        hintColor: Colors.grey[800],
        iconTheme: IconThemeData(
          color: Colors.grey[300],
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.grey[300],
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.grey[300],
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            color: Colors.grey[300],
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
          button: TextStyle(
            color: Colors.grey[300],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MainScreen(),
      routes: {
        '/result': (context) => ResultScreen(),
      },
    );
  }
}
