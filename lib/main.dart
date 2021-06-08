import 'package:design/newScreen/BottomNavBar/bottomNavBarScreen.dart';
import 'package:design/newScreen/loginScreen.dart';
import 'package:flutter/material.dart';

import 'newScreen/all_completed_order.dart';
import 'newScreen/help_center.dart';
import 'newScreen/open_orders_list.dart';
import 'newScreen/order_accept_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      theme: ThemeData(
        fontFamily: 'sans',
      ),
      routes: {
        '/': (context) => OpenOrderList(),
        '/login': (context) => LoginScreen(),
        '/first': (context) => AllCompletedOrder(),
        '/third': (context) => OpenOrderList(),
        '/fourth': (context) => BottomNavBarScreen(),
        '/fifth': (context) => OrderAccept(),
        '/sisxth': (context) => HelpCenter(),
      },
    );
  }
}
