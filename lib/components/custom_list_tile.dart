import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final ImageProvider? imageProvider;
  final String? num;
  CustomListTile({this.imageProvider, this.num});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          top: 7.0,
          left: 20.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 95.0,
                  width: 95.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider!, fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order 0$num',
                      style: kOrderCardTitleStyle,
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/open_order/fast-delivery.png'),
                          size: 16.0,
                          color: kOrderCardColor1,
                        ),
                        Text(
                          ' 1532 Pointe Lae, Miami',
                          style: kOrderCardSubtitleStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Open since 1988 | 24 items',
                      style: kOrderLatLineStyle,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 40,
              thickness: 1,
              color: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
