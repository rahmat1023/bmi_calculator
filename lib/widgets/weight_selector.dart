import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';

class WeightSelector extends StatefulWidget {
  @override
  _WeightSelectorState createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context) {
    Weight weight = Provider.of<Weight>(context);
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).accentColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WEIGHT (KG)',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              weight.weight.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: weight.substractWeight,
                  icon: Icon(
                    Icons.remove_circle,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: weight.addWeight,
                  icon: Icon(
                    Icons.add_circle,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
