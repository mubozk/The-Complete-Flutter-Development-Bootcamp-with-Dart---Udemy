import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final Icon icon;
  final String? label;


  IconContent({required this.icon, this.label });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(
          height: 18,
        ),
        Text(label!, style: kLabelTextStyle,)

      ],
    );
  }
}
