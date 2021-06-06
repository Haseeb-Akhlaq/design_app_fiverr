import 'package:design/components/components.dart';
import 'package:design/components/custom_list_tile.dart';
import 'package:design/components/styles.dart';
import 'package:design/components/tile.dart';
import 'package:design/newScreen/order_details.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class AllCompletedOrder extends StatefulWidget {
  @override
  _AllCompletedOrderState createState() => _AllCompletedOrderState();
}

class _AllCompletedOrderState extends State<AllCompletedOrder> {
  String selectedDropDown = 'All';

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
            'Completed Orders',
            style: kAppBarTitleTextStyle,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Components.notify(),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Container(
                    child: CircularIcon(
                        icon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ImageIcon(
                        AssetImage(
                          'assets/completed_order/checklist.png',
                        ),
                        color: kMainColor,
                        size: 20.0,
                      ),
                    )),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton(
                                isExpanded: false,
                                iconEnabledColor: kMainColor,
                                onChanged: (v) {
                                  setState(() {
                                    selectedDropDown = v.toString();
                                  });
                                },
                                value: selectedDropDown,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      'All',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    value: 'All',
                                  ),
                                  DropdownMenuItem(
                                    child: Text(
                                      'Group',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    value: 'Group',
                                  ),
                                ]),
                          ),
                          Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    '18 Completed',
                    style: kTextFieldStyle,
                  ),
                ],
              ),
            ),
            if (selectedDropDown == 'Group') SizedBox(height: 10),
            if (selectedDropDown == 'Group')
              Tiles(
                  image: 'open_order/fast-delivery',
                  text1: ' 1532 Pointe Lane',
                  text2: 'Cash to bring to store: \$150'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(),
                  ),
                );
              },
              child: CustomListTile(
                num: '1',
                imageProvider: AssetImage('assets/open_order/Layer 1.png'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(),
                  ),
                );
              },
              child: CustomListTile(
                num: '2',
                imageProvider: AssetImage('assets/open_order/Layer 2.png'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(),
                  ),
                );
              },
              child: CustomListTile(
                num: '3',
                imageProvider: AssetImage('assets/open_order/Layer 3.png'),
              ),
            ),
            if (selectedDropDown == 'Group') SizedBox(height: 10),
            if (selectedDropDown == 'Group')
              Tiles(
                  image: 'open_order/fast-delivery',
                  text1: ' 281 Cabell Avenne',
                  text2: 'Cash to bring to store: \$150'),
            if (selectedDropDown == 'Group') SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderDetails(),
                  ),
                );
              },
              child: CustomListTile(
                num: '1',
                imageProvider: AssetImage('assets/open_order/Layer 4.png'),
              ),
            ),
          ],
        ));
  }
}
