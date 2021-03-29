import 'package:flutter/material.dart';

import '../widgets/gender_selector.dart';
import '../widgets/height_slider.dart';
import '../widgets/age_selector.dart';
import '../widgets/weight_selector.dart';
import '../widgets/theme_drawer.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      drawer: ThemeDrawer(),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: GenderSelector(),
              ),
              Expanded(
                flex: 4,
                child: HeightSlider(),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    WeightSelector(),
                    AgeSelector(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/result'),
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).highlightColor),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Calculate',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
