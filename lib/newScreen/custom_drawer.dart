import 'package:design/components/styles.dart';
import 'package:design/newScreen/BottomNavBar/bottomNavBarScreen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200.0,
                color: kDrawerColor,
                width: double.infinity,
              ),
              Positioned(
                bottom: -45,
                right: MediaQuery.of(context).size.width * 0.3,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: kMainColor),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
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
          SizedBox(height: 50),
          Expanded(
            child: Column(
              children: [
                Column(
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
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBarScreen()),
                                (Route<dynamic> route) => false);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
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
                                  style: TextStyle(
                                      color: kPrimaryColor, fontSize: 20.0),
                                ),
                              ],
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/sisxth');
                          },
                          child: Container(
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Container(
              width: double.infinity,
              child: Text(
                'App Version 1.0.1',
                style: TextStyle(fontSize: 15.0, color: Color(0xFF2052a8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
