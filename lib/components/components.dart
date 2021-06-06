import 'package:flutter/material.dart';

import 'styles.dart';

class Components {
  static Row notify() {
    return Row(
      children: [
        ImageIcon(
          AssetImage('assets/open_order/radio-on-button.png'),
          size: 12.0,
          color: kOnlineColor,
        ),
        SizedBox(
          width: 3.0,
        ),
        Text(
          ' Online',
          style: TextStyle(fontSize: 14.0, color: kOnlineColor),
        ),
      ],
    );
  }

  static Drawer drawer() {
    return Drawer(
      child: Stack(
        children: [
          Container(
            height: 250.0,
            color: kDrawerColor,
            width: double.infinity,
          ),
          Positioned(
            top: 350.0,
            left: 30,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Metlinda Parker',
                    textAlign: TextAlign.center,
                    style: kOrderCardTitleStyle,
                  ),
                  Text(
                    'metlindaparker@gmail.com',
                    textAlign: TextAlign.center,
                    style: kOrderCardSubtitleStyle,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 200,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: kDrawerColor,
                    ),
                    child: Center(
                        child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: kPrimaryColor,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'My Profile',
                          style:
                              TextStyle(color: kPrimaryColor, fontSize: 20.0),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 200,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: kPrimaryColor,
                    ),
                    child: Center(
                        child: Row(
                      children: [
                        Icon(
                          Icons.headset_mic,
                          color: kOrderCardColor1,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Help Center',
                          style: TextStyle(
                              color: kOrderCardColor1, fontSize: 20.0),
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 750,
              left: 30.0,
              child: Text(
                'App Version 1.0.1',
                style: TextStyle(fontSize: 15.0, color: Color(0xFF2052a8)),
              )),
          Positioned(
            left: 80,
            top: 200.0, // (background container size) - (circle height / 2)
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
      ),
    );
  }
}

class CircularIcon extends StatelessWidget {
  final Widget? icon;
  CircularIcon({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 60.0,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: kPrimaryColor,
        border: Border.all(width: 1.0, color: kMainColor),
      ),
      child: icon,
    );
  }
}

class CircularPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/completed_orders_group/Layer 3.png'),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(100),
        color: kPrimaryColor,
        border: Border.all(width: 1.0, color: kMainColor),
      ),
    );
  }
}
