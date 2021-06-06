import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class SpecialRow extends StatelessWidget {
  final String? text;
  SpecialRow({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        children: [
          CircularIcon(
              icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ImageIcon(
              AssetImage(
                'assets/completed_order/checklist.png',
              ),
              color: kMainColor,
              size: 20.0,
            ),
          )),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      text!,
                      style: kOrderCardTitleStyle,
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: kMainColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Today',
                  style: kOrderCardSubtitleStyle,
                ),
              ],
            ),
          ),
          Text(
            '18 Completed',
            style: kTextFieldStyle,
          ),
        ],
      ),
    );
  }
}
