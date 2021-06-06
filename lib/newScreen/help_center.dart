import 'package:design/components/components.dart';
import 'package:design/components/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class HelpCenter extends StatelessWidget {
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
          'Help Center',
          style: kAppBarTitleTextStyle,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Components.notify(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35.0),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/help_center/01.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'OR',
                    textAlign: TextAlign.center,
                    style: kOrderCardTitleStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Send us a message',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: kOrderCardTitleStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'write this',
                      style: kOrderCardSubtitleStyle,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                          10,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Message',
                      style: kOrderCardTitleStyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'write Message',
                      style: kOrderCardSubtitleStyle,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                          10,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/help_center/submit.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
