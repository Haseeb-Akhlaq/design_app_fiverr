import 'package:design/components/components.dart';
import 'package:design/components/custom_list_tile.dart';
import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/haseeb/AndroidStudioProjects/Nobody.2021.720p.WEBRip.800MB.x264-GalaxyRG%5BTGx%5D/lib/newScreen/order_accept_view.dart';

import 'custom_drawer.dart';

class OpenOrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: ImageIcon(
                  AssetImage('assets/open_order/menu.png'),
                  color: Color(0xFF5c5e61),
                  size: 20.0,
                ),
              );
            },
          ),
        ),
        title: Text(
          'Open Orders',
          style: kAppBarTitleTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Components.notify(),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderAccept(),
                  ),
                );
              },
              child: CustomListTile(
                imageProvider: AssetImage(
                  'assets/open_order/Layer 1.png',
                ),
                num: '1',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderAccept(),
                  ),
                );
              },
              child: CustomListTile(
                  imageProvider: AssetImage('assets/open_order/Layer 2.png'),
                  num: '2'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderAccept(),
                  ),
                );
              },
              child: CustomListTile(
                  imageProvider: AssetImage('assets/open_order/Layer 2.png'),
                  num: '8'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderAccept(),
                  ),
                );
              },
              child: CustomListTile(
                  imageProvider: AssetImage('assets/open_order/Layer 3.png'),
                  num: '3'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderAccept(),
                  ),
                );
              },
              child: CustomListTile(
                  imageProvider: AssetImage('assets/open_order/Layer 4.png'),
                  num: '4'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderAccept(),
                  ),
                );
              },
              child: CustomListTile(
                  imageProvider: AssetImage('assets/open_order/Layer 5.png'),
                  num: '5'),
            ),
          ],
        ),
      ),
    );
  }
}
