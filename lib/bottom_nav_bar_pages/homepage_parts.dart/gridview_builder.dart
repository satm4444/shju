import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shju/providers/category_provider.dart';
import 'package:shju/widgets/simple_tile.dart';

class GridTileBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromprovider = Provider.of<CategoryProvider>(context);
    final data = fromprovider.items;
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: data[index],
        child: SimpleTile(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 0,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5.3),
    );
  }
}
