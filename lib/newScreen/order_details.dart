import 'package:design/components/components.dart';
import 'package:design/components/order_details_components.dart';
import 'package:design/components/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class OrderDetails extends StatelessWidget {
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
          'Order Details',
          style: kAppBarTitleTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Components.notify(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            OrderDetailsComponent.orderColumn(),
            SizedBox(height: 25),
            DeliverRow(),
            SizedBox(height: 25),
            OrderDetailsComponent.paymentRow(),
            SizedBox(height: 15),
            OrderDetailsComponent.checklist(),
            SizedBox(
              height: 35.0,
            ),
            OrderDetailsComponent.customerInfo(),
            SizedBox(
              height: 10.0,
            ),
            OrderDetailsComponent.amount(),
            SizedBox(
              height: 30.0,
            ),
            OrderDetailsComponent.itemList()
          ],
        ),
      ),
    );
  }
}
