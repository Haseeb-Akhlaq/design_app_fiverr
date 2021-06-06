import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class Tiles extends StatelessWidget {
  Tiles({this.text1, this.text2, this.image});
  final String? text1;
  final String? text2;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircularPic(),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Corner Store',
                      style: kOrderCardTitleStyle,
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/$image.png'),
                          color: kOrderCardColor1,
                          size: 12.0,
                        ),
                        Text(
                          ' $text1',
                          style: kOrderCardSubtitleStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      ' $text2',
                      style: kOrderLatLineStyle,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
