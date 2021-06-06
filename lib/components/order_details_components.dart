import 'package:design/components/styles.dart';
import 'package:flutter/material.dart';

import 'items_list.dart';

class OrderDetailsComponent {
  static Column checklist() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Checklist',
          textAlign: TextAlign.left,
          style: kOrderCardTitleStyle,
        ),
        SizedBox(height: 15.0),
        Card(
          color: kPrimaryColor,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: kMainColor,
                          value: true,
                          onChanged: (v) {}),
                    ),
                    Text(
                      'I picked up the order',
                      style: kSecondSubtitleStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: kMainColor,
                          value: true,
                          onChanged: (v) {}),
                    ),
                    Text(
                      'I am at delivery location.',
                      style: kSecondSubtitleStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: kMainColor,
                          value: false,
                          onChanged: (v) {}),
                    ),
                    Text('I received the payment',
                        style: kOrderCardSubtitleStyle),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          activeColor: kMainColor,
                          value: false,
                          onChanged: (v) {}),
                    ),
                    Text('I delivered the Order',
                        style: kOrderCardSubtitleStyle),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static Widget customerInfo() {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Customer Info',
          style: kOrderCardTitleStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Icon(
              Icons.person,
              color: kMainColor,
              size: 25.0,
            ),
            Text(
              ' Metlinda Parker',
              style: kTextFieldStyle,
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: kSecondSubtitleStyle,
        ),
      ]),
    );
  }

  static Widget amount() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 30.0,
          width: double.infinity,
          padding: EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Amount:',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-bold'),
              ),
              Text(
                '\$10.52',
                style: TextStyle(
                    fontSize: 18,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget itemList() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List of Items',
            style: kOrderCardTitleStyle,
          ),
          SizedBox(
            height: 30.0,
          ),
          ItemsList(
            picPath: 'assets/order_details/T-shirt.png',
            text: 'T-shirt',
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          ItemsList(
            picPath: 'assets/order_details/shirt.png',
            text: 'Shirt',
          ),
        ],
      ),
    );
  }

  static Container phone(Color buttonColor, color) {
    return Container(
      height: 35.0,
      width: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: buttonColor,
        border: Border.all(width: 1.0, color: kMainColor),
      ),
      child: Icon(
        Icons.phone_in_talk,
        color: color,
      ),
    );
  }

  static Column orderColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Order 01',
        style: kOrderCardTitleStyle,
      ),
      SizedBox(
        height: 5.0,
      ),
      Text(
        'Open since....| in progress',
        style: kOrderLatLineStyle,
      ),
    ]);
  }

  static Row paymentRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Payment Method:',
          style: kOrderCardTitleStyle,
        ),
        Container(
            height: 60.0,
            width: 80.0,
            child: Image(image: AssetImage('assets/order_details/visa.png'))),
        Container(
            height: 60.0,
            width: 80,
            child: Image(image: AssetImage('assets/order_details/cash.png'))),
      ],
    );
  }
}

class DeliverRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            ImageIcon(
              AssetImage(
                'assets/order_details/radio-on-button.png',
              ),
              size: 20.0,
              color: kMainColor,
            ),
            Container(
              color: kMainColor,
              height: 50,
              width: 2,
            ),
            ImageIcon(
              AssetImage('assets/order_details/radio-on-button copy 2.png'),
              size: 20.0,
              color: kMainColor,
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store Address',
                              style: kOrderCardSubtitleStyle,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '1532 Pointe Lane',
                              style: kOrderCardTitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    OrderDetailsComponent.phone(kPrimaryColor, kMainColor),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery address',
                              style: kOrderCardSubtitleStyle,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '455 Passaic Street',
                              style: kOrderCardTitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    OrderDetailsComponent.phone(kMainColor, kPrimaryColor),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
