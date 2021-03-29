import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../data/data.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int weight = Provider.of<Weight>(context).weight;
    double height = Provider.of<Height>(context).height;
    double bmi = Provider.of<Result>(context, listen: false)
        .calculateBMI(weight, height);
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Text(
              'BMI Calculator',
              style: Theme.of(context).textTheme.headline3,
            ),
            Spacer(),
            Text(
              'Your Body Mass Index is',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              NumberFormat("##.0#").format(bmi),
              style: Theme.of(context).textTheme.headline1,
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).highlightColor),
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Calculate Again',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
