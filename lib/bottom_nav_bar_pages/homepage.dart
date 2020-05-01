import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shju/bottom_nav_bar_pages/homepage_parts.dart/gridview_builder.dart';
import 'package:shju/bottom_nav_bar_pages/homepage_parts.dart/horizontaltile_ListBuilder.dart';
import 'package:shju/colors.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSIZE = MediaQuery.of(context).size;
    var forheight = screenSIZE.height;
    var forWidth = screenSIZE.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: forheight * 0.01,
              ),
              Container(
                // color: Colors.pink,
                width: forWidth,
                height: forheight * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: Text(
                        "Shju",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            fontFamily: "Title",
                            color: AppColor.dividerColor),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: null,
                          iconSize: 28,
                        ),
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 19.0),
              //   child: Text(
              //     "Trending",
              //     style: TextStyle(
              //       fontSize: 17,
              //       fontFamily: 'Heading',
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              Container(
                // color: Colors.red,
                height: forheight * 0.29,
                width: forWidth,
                child: HorizontalTileBuilder(),
              ),
              SizedBox(
                height: forheight * 0.014,
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0),
                    child: Container(
                      height: forheight * 0.18,
                      width: forWidth * 0.9,
                      color: Colors.lightBlue,
                      child: Image.asset("assets/images/cover2.png",
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 77,
                      left: 220,
                    ),
                    child: Container(
                      height: 35,
                      width: 120,
                      child: Center(
                        child: Text(
                          "Shop By Brands",
                          style: TextStyle(
                            //fontFamily: "Heading",
                            fontSize: 12.5,
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white.withOpacity(0.4),
                        border: Border.all(
                          color: AppColor.dividerColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: forheight * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Container(
                  height: forheight * 0.29,
                  width: forWidth * 0.9,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: forWidth * 0.4,
                        height: forheight * 0.29,
                        child: Image.asset(
                          "assets/images/cover1.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: forWidth * 0.5,
                        height: forheight * 0.29,
                        color: Color(0xFF000000).withOpacity(0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 40),
                            Center(
                              child: Text(
                                "Wanna sell your shoes ?",
                                style: TextStyle(
                                    fontFamily: "Heading",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "Or",
                                style: TextStyle(
                                  fontFamily: "Heading",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff4CC4C0),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Exchange with new",
                                    style: TextStyle(
                                        fontFamily: "Heading",
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    LineIcons.arrow_right,

                                    // Icons.arrow_forward,
                                    color: Color(0xff4CC4C0),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, left: 16),
                              child: Container(
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffED6926).withOpacity(0.95),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.orange,
                                        offset: Offset(1, 2),
                                        blurRadius: 0.8),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "+EXPLORE",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Heading',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: forheight * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Heading',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0, top: 14),
                child: Container(
                  height: forheight * 0.616,
                  width: forWidth * 0.9,
                  //color: Colors.purple,
                  child: GridTileBuilder(),
                ),
              ),
              SizedBox(
                height: forheight * 0.01,
              ),
              Container(
                height: 10,
                width: double.infinity,
                color: Colors.black.withOpacity(0.06),
              ),
              SizedBox(
                height: forheight * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0),
                child: Container(
                  height: forheight * 0.45,
                  width: forWidth * 0.9,
                  color: Colors.black.withOpacity(0.09),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.004))),
                            height: forheight * 0.225,
                            width: forWidth * 0.45,
                            // color: Colors.green,
                            child: Image.asset("assets/images/footer/one.png",
                                fit: BoxFit.cover),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.004))),
                            height: forheight * 0.225,
                            width: forWidth * 0.45,
                            // color: Colors.orange,
                            child: Image.asset("assets/images/footer/two.png",
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.004))),
                            height: forheight * 0.225,
                            width: forWidth * 0.45,
                            //color: Colors.blue,
                            child: Image.asset("assets/images/footer/three.png",
                                fit: BoxFit.cover),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.004))),
                            height: forheight * 0.225,
                            width: forWidth * 0.45,
                            // color: Colors.red,
                            child: Image.asset(
                              "assets/images/footer/one.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
