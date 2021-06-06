import 'package:design/components/special_row.dart';
import 'package:design/components/tile.dart';
import 'package:flutter/material.dart';
import 'custom_list_tile.dart';

class SpecialTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: double.infinity,
      child: Column(
        children: [
          SpecialRow(text: 'Group',),
          SizedBox(height: 10.0,),
          Tiles(image:'open_order/fast-delivery', text1:' 1532 Pointe Lane', text2: 'Cash to bring to store: \$150'),
          CustomListTile(num:'1', imageProvider: AssetImage('assets/open_order/Layer 1.png'), ),
          CustomListTile(num:'2', imageProvider: AssetImage('assets/open_order/Layer 2.png'), ),
        ],
      ),
    );
  }
}
