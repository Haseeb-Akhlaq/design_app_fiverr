import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final String? text;
  final String? picPath;
  ItemsList({@required this.text, @required this.picPath});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(
            picPath!,
          ),
          radius: 40.0,
        ),
        SizedBox(width: 3.0),
        Text(
          text!,
          style: kOrderCardTitleStyle,
        ),
      ],
    );
  }
}
