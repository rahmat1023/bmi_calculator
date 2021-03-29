import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../data/data.dart';
import './gender_button.dart';

class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  var isMale = false;
  var isFemale = false;

  @override
  Widget build(BuildContext context) {
    Gender gender = Provider.of<Gender>(context);
    var isMale = gender.isMale;
    var isFemale = gender.isFemale;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: gender.changeGenderToMale,
          child: GenderButton(
            gender: 'MALE',
            icon: MdiIcons.genderMale,
            isSelected: isMale,
          ),
        ),
        GestureDetector(
          onTap: gender.changeGenderToFemale,
          child: GenderButton(
            gender: 'FEMALE',
            icon: MdiIcons.genderFemale,
            isSelected: isFemale,
          ),
        ),
      ],
    );
  }
}
