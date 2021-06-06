import 'package:design/components/styles.dart';
import 'package:design/newScreen/profileScreen.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/haseeb/AndroidStudioProjects/Nobody.2021.720p.WEBRip.800MB.x264-GalaxyRG%5BTGx%5D/lib/newScreen/all_completed_order.dart';
import 'file:///C:/Users/haseeb/AndroidStudioProjects/Nobody.2021.720p.WEBRip.800MB.x264-GalaxyRG%5BTGx%5D/lib/newScreen/open_orders_list.dart';

class BottomNavBarScreen extends StatefulWidget {
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedIndex = 0;
  PageController _pageController = PageController();

  void changeIndex({index}) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(selectedIndex,
          duration: Duration(microseconds: 600), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 55,
        color: kPrimaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: IconButton(
                  onPressed: () {
                    changeIndex(index: 0);
                  },
                  icon: ImageIcon(
                    AssetImage('assets/open_order/order_list.png'),
                    color:
                        selectedIndex == 0 ? Color(0xFF5f63f2) : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: IconButton(
                  onPressed: () {
                    changeIndex(index: 2);
                    print(selectedIndex);
                  },
                  icon: ImageIcon(
                    AssetImage('assets/open_order/complete_order.png'),
                    color:
                        selectedIndex == 2 ? Color(0xFF5f63f2) : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: kMainColor,
        onPressed: () {
          changeIndex(index: 1);
        },
        child: ImageIcon(
          AssetImage('assets/open_order/add.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        children: [
          OpenOrderList(),
          ProfileScreen(),
          AllCompletedOrder(),
        ],
      ),
    );
  }
}
