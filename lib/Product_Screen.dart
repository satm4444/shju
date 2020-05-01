import 'package:flutter/material.dart';
import 'package:shju/colors.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  String selectedid;
  String selectedtitle;
  String selectedsubtitle;
  String selectedimage;
  double selectedprice;
  String selecteddescription1;
  String selecteddescription2;
  String selecteddescription3;
  String selecteddescription4;
  String selecteddescription5;
  String selecteddescription6;
  String selectedmaterial1;
  String selectedmaterial2;
  double selectedrating;

  @override
  Widget build(BuildContext context) {
    var screenSIZE = MediaQuery.of(context).size;
    var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;

    final routeArgs = ModalRoute.of(context).settings.arguments as Map;
    selectedid = routeArgs['ids'];
    selectedtitle = routeArgs['title'];
    selectedimage = routeArgs['image'];
    selectedprice = routeArgs['price'];
    selecteddescription1 = routeArgs['des1'];
    selecteddescription2 = routeArgs['des2'];
    selecteddescription3 = routeArgs['des3'];
    selecteddescription4 = routeArgs['des4'];
    selecteddescription5 = routeArgs['des5'];
    selecteddescription6 = routeArgs['des6'];
    selectedmaterial1 = routeArgs['material1'];
    selectedmaterial2 = routeArgs['material2'];
    selectedrating = routeArgs['rating'];
    selectedsubtitle = routeArgs['subtitle'];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: forWidth,
                height: forheight * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              //color: AppColor.dividerColor,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Text(
                          selectedtitle,
                          style: TextStyle(
                              fontFamily: "Heading",
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.add_shopping_cart),
                          onPressed: null,
                          iconSize: 24,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: forheight * 0.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Container(
                  height: forheight * 0.25,
                  width: forWidth * 0.95,
                  child: Image.asset(selectedimage, fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Container(
                  height: forheight * 0.048,
                  width: forWidth * 0.95,
                  //color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          selectedtitle,
                          style: TextStyle(
                              fontFamily: "Heading",
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  selectedsubtitle,
                  style: TextStyle(
                      fontFamily: "Subtextregular",
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        "Rs.${selectedprice}",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Heading",
                            fontWeight: FontWeight.w900,
                            color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "(Inclusive of all taxes)",
                      style: TextStyle(
                          fontFamily: "Heading",
                          fontSize: 10,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0, top: 3),
                child: Container(
                  height: 195,
                  width: forWidth * 0.95,
                  //color: Colors.blue,
                  color: Color(0xffFBFBFB),
                  child: Column(children: <Widget>[
                    Container(
                      height: 35,
                      width: forWidth * 0.95,
                      //color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            "Select Size(UK Size)",
                            style: TextStyle(
                                fontFamily: "Heading",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "Size Chart >",
                              style: TextStyle(
                                  fontFamily: "Subtextregular",
                                  fontSize: 14,
                                  color: AppColor.buynowbutton,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: forWidth * 0.95,
                      color: Colors.orange,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: forWidth * 0.95,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 50,
                      width: forWidth * 0.95,
                      color: Colors.black,
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
