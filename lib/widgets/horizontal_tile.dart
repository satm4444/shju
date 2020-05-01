import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shju/colors.dart';
import 'package:shju/models/product.dart';

class HorizontalTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSIZE = MediaQuery.of(context).size;
    var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;
    final fromModel = Provider.of<Product>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 6.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/productcreen', arguments: {
            "ids": fromModel.id,
            "title": fromModel.title,
            "subtitle": fromModel.subtitle,
            "image": fromModel.image,
            "price": fromModel.price,
            "des1": fromModel.description1,
            "des2": fromModel.description2,
            "des3": fromModel.description3,
            "des4": fromModel.description4,
            "des5": fromModel.description5,
            "des6": fromModel.description6,
            "material1": fromModel.material1,
            "material2": fromModel.material2,
            "rating": fromModel.rating,
          });
        },
        child: Container(
          // height: forheight * 0.1,
          width: forWidth * .27,
          child: Column(
            children: <Widget>[
              Container(
                height: forheight * 0.185,
                child: Image.asset(fromModel.image, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0.2),
                child: Container(
                  width: forWidth * .27,
                  height: forheight * 0.075,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.dividerColor.withOpacity(0.08),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          fromModel.title,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Heading",
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          fromModel.subtitle,
                          style: TextStyle(
                              fontSize: 9,
                              fontFamily: "Heading",
                              fontWeight: FontWeight.w600,
                              color: AppColor.dividerColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          "Rs.${fromModel.price}",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: "Heading",
                              fontWeight: FontWeight.w800,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
