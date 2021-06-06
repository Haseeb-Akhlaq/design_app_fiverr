import 'package:design/components/reusable_stack.dart';
import 'package:design/components/styles.dart';
import 'package:design/components/tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/haseeb/AndroidStudioProjects/Nobody.2021.720p.WEBRip.800MB.x264-GalaxyRG%5BTGx%5D/lib/newScreen/custom_drawer.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool online = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage('assets/open_order/radio-on-button.png'),
                  size: 12.0,
                  color: kPrimaryColor,
                ),
                SizedBox(
                  width: 3.0,
                ),
                Text(
                  ' Online',
                  style: TextStyle(fontSize: 16.0, color: kPrimaryColor),
                ),
              ],
            ),
          )
        ],
        backgroundColor: kMainColor,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: ImageIcon(
                  AssetImage('assets/open_order/menu.png'),
                  color: Color(0xFFFFFFFF),
                  size: 20.0,
                ),
              );
            },
          ),
        ),
        title: Text(
          'My profile',
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: kMainColor,
                ),
                Positioned(
                  bottom: -55,
                  left: MediaQuery.of(context).size.width * 0.34,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: kMainColor),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                        border: Border.all(width: 2.0, color: Colors.white),
                        image: DecorationImage(
                          image: AssetImage('assets/profile_view/profile.png'),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 70),
            Column(
              children: [
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
                      style: TextStyle(
                        color: kDrawerColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: CupertinoSwitch(
                        value: online,
                        onChanged: (value) {
                          setState(() {
                            online = value;
                          });
                        },
                        activeColor: kDrawerColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Business',
                    textAlign: TextAlign.left,
                    style: kOrderCardTitleStyle,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  SizedBox(height: 20),
                  Text(
                    'My Stores',
                    textAlign: TextAlign.left,
                    style: kOrderCardTitleStyle,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Tiles(
              image: 'order_accept_view/shop',
              text1: 'The Corner Store',
              text2: 'Open / Closed',
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            SizedBox(height: 10),
            Tiles(
              image: 'order_accept_view/shop',
              text1: 'Decorama Boutique',
              text2: 'Open/Closed',
            ),
          ],
        ),
      ),
    );
  }
}
