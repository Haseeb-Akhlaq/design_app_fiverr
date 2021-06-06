import 'package:design/components/components.dart';
import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class OrderAccept extends StatelessWidget {
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
          'Open Order',
          style: kAppBarTitleTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Components.notify(),
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Column(
            children: [
              Container(
                height: 95.0,
                width: 95.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/open_order/Layer 1.png'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Order 01',
                style: kOrderCardTitleStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(
                          5,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 22),
                      child: Text(
                        'Accept',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: kMainColor),
                        borderRadius: BorderRadius.circular(
                          5,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 22),
                      child: Text(
                        'Decline',
                        style: TextStyle(color: kMainColor, fontSize: 16.0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/order_accept_view/shop.png'),
                          color: kMainColor,
                          size: 16,
                        ),
                        Text(
                          '  Store Address',
                          style: kSecondSubtitleStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      style: kOrderCardSubtitleStyle,
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText:
                            '3639 Bombardier way, Belleville, Michigan-4811',
                        hintStyle: TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage('assets/open_order/fast-delivery.png'),
                          color: kMainColor,
                          size: 20,
                        ),
                        Text(
                          '  Delivery Address',
                          style: kSecondSubtitleStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      style: kOrderCardSubtitleStyle,
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText:
                            '281 Cabell Avenue, Washington, Virginia-2008',
                        hintStyle: TextStyle(fontSize: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Open Since 1998',
                          style: TextStyle(
                            fontSize: 18,
                            color: kMainColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '01 of items',
                          style: TextStyle(
                            fontSize: 18,
                            color: kMainColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
