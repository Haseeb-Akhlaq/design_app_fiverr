import 'package:design/components/styles.dart';
import 'package:design/components/tile.dart';
import 'package:flutter/material.dart';

bool value = true;

class ReusableStack extends StatelessWidget {
  final Widget? child;
  ReusableStack({this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // background image and bottom contents
        Column(
          children: <Widget>[
            Container(
              height: 200.0,
              color: kDrawerColor,
            ),
            Column(
              children: [
                SizedBox(height: 70.0),
                Text(
                  'Metlinda Parker',
                  textAlign: TextAlign.center,
                  style: kOrderCardTitleStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Online',
                      style: TextStyle(color: kDrawerColor, fontSize: 18.0),
                    ),
                    SizedBox(width: 5.0),
                    Switch(
                      value: value,
                      onChanged: (value) {},
                      activeColor: kDrawerColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Avatar(
                        text: 'King Studio',
                        image: '03',
                      ),
                      Avatar(
                        text: 'Savings Store',
                        image: '02',
                      ),
                      Avatar(
                        text: 'Be different',
                        image: '01',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'My Stores',
                        style: kOrderCardTitleStyle,
                      ),
                    ],
                  ),
                ),
                Tiles(
                  image: 'order_accept_view/shop',
                  text1: 'The Corner Store',
                  text2: 'Open/Closed',
                ),
                Tiles(
                  image: 'order_accept_view/shop',
                  text1: 'Decorama Boutique',
                  text2: 'Open/Closed',
                ),
              ],
            ),
            // Profile image
          ],
        ),
        Positioned(
          top: 150.0, // (background container size) - (circle height / 2)
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
              border: Border.all(width: 1.0, color: kDrawerColor),
              image: DecorationImage(
                image: AssetImage('assets/profile_view/profile.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  final String? text;
  final String? image;
  Avatar({this.text, this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/profile_view/$image.png'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '$text',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
