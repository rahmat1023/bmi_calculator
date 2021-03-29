import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../colors/colors.dart';

class ThemeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorTheme colorTheme = Provider.of<ColorTheme>(context);
    final List<Map<String, Object>> colors = colorTheme.colorSelection;
    return Drawer(
      semanticLabel: 'Theme',
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Color Theme',
                style: Theme.of(context).textTheme.button,
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: colors.length,
                  itemBuilder: (context, index) => Container(
                    color: colors[index]['color'] == colorTheme.color
                        ? Theme.of(context).hintColor
                        : null,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: colors[index]['color'],
                      ),
                      title: Text(
                        colors[index]['title'],
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      onTap: () {
                        colorTheme.changeColors(colors[index]['color']);
                        Navigator.of(context).pop();
                      },
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
