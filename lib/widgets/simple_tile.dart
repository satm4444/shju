import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shju/colors.dart';
import 'package:shju/models/category.dart';

class SimpleTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fromModel = Provider.of<Category>(context);
    return Container(
      height: 150,
      width: 105,
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: 105,
            // color: Colors.deepOrange,
            child: Image.asset(
              fromModel.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 30,
            width: 105,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.dividerColor.withOpacity(0.08),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0, top: 1),
              child: Text(
                fromModel.title,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Heading",
                    fontWeight: FontWeight.w800),
              ),
            ),
          )
        ],
      ),
    );
  }
}
