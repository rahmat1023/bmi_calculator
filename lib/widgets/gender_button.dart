import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {
  final String gender;
  final IconData icon;
  final bool isSelected;

  GenderButton({
    @required this.gender,
    @required this.icon,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final widgetWidth = (MediaQuery.of(context).size.width - 50) / 2;
    return Container(
      width: widgetWidth,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isSelected
            ? Theme.of(context).highlightColor
            : Theme.of(context).accentColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: isSelected ? 100 : 80,
            color: Theme.of(context).iconTheme.color,
          ),
          Text(
            gender,
            style: isSelected
                ? Theme.of(context).textTheme.button
                : Theme.of(context).textTheme.headline3,
          )
        ],
      ),
    );
  }
}
