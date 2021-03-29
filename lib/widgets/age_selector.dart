import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';

class AgeSelector extends StatefulWidget {
  @override
  _AgeSelectorState createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {
  @override
  Widget build(BuildContext context) {
    Age age = Provider.of<Age>(context);
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
              'AGE',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              age.age.toString(),
              style: Theme.of(context).textTheme.headline2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: age.substractAge,
                  icon: Icon(
                    Icons.remove_circle,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: age.addAge,
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
