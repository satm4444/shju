import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shju/providers/horizontal_products_provider.dart';
import 'package:shju/widgets/horizontal_tile.dart';

class HorizontalTileBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromprovider = Provider.of<HorizontalProducts>(context);
    final tileData = fromprovider.items;

    return ListView.builder(
      itemCount: tileData.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: tileData[index],
        child: HorizontalTile(),
      ),
    );
  }
}
