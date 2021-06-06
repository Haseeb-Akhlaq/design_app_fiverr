import 'package:design/components/components.dart';
import 'package:design/components/custom_list_tile.dart';
import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class OrderInProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Orders In Progress',
          style: kAppBarTitleTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Components.notify(),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CustomListTile(
              imageProvider: AssetImage(
                'assets/open_order/Layer 1.png',
              ),
              num: '1',
            ),
            CustomListTile(
                imageProvider: AssetImage('assets/open_order/Layer 2.png'),
                num: '2'),
            CustomListTile(
                imageProvider: AssetImage('assets/open_order/Layer 3.png'),
                num: '3'),
            CustomListTile(
                imageProvider: AssetImage('assets/open_order/Layer 4.png'),
                num: '4'),
            CustomListTile(
                imageProvider: AssetImage('assets/open_order/Layer 5.png'),
                num: '5'),
          ],
        ),
      ),
    );
  }
}
