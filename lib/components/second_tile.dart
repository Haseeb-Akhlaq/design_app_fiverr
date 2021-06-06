import 'package:design/components/special_row.dart';
import 'package:design/components/tile.dart';
import 'package:flutter/material.dart';

import 'custom_list_tile.dart';

class SecondTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Tiles(image: 'open_order/fast-delivery', text1: ' 281 Cabell Avenue', text2: 'cash to bring to store',),
          CustomListTile(num:'1', imageProvider: AssetImage('assets/open_order/Layer 1.png'), ),
          CustomListTile(num:'2', imageProvider: AssetImage('assets/open_order/Layer 2.png'), ),
        ],
      ),
    );
  }
}
