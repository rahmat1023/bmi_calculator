import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';

class HeightSlider extends StatefulWidget {
  @override
  _HeightSliderState createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    Height height = Provider.of<Height>(context);
    final heightNum = height.height == null ? 175.0 : height.height ;
    final heightText = heightNum.round().toString();
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Theme.of(context).accentColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT (CM)',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            heightText,
            style: Theme.of(context).textTheme.headline2,
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Slider(
              activeColor: Theme.of(context).highlightColor,
              value: heightNum,
              min: 130,
              max: 230,
              divisions: 100,
              onChanged: (value) {
                  height.changeHeight(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
