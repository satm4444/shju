import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
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
                        "Rs.$selectedprice",
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
                  height: 205,
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
                      height: 60,
                      width: forWidth * 0.95,
                      //  color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.07))),
                              child: Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontFamily: "Heading",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.07))),
                              child: Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontFamily: "Heading",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.07))),
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontFamily: "Heading",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.07))),
                              child: Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: "Heading",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.07))),
                              child: Center(
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      fontFamily: "Heading",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: forWidth * 0.95,
                      // color: Colors.pink,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: 127,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColor.addtocartbutton,
                            ),
                            child: Center(
                              child: Text(
                                "ADD TO CART",
                                style: TextStyle(
                                    fontFamily: "Heading",
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 127,
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: AppColor.buynowbutton,
                            ),
                            child: Center(
                              child: Text(
                                "BUY NOW",
                                style: TextStyle(
                                    fontFamily: "Heading",
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      width: forWidth * 0.95,
                      // color: Colors.green,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontFamily: "Heading",
                                fontSize: 15,
                                color: AppColor.addtocartbutton,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: AppColor.addtocartbutton)),
                                height: 30,
                                width: forWidth * 0.4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: "Enter pincode",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: forWidth * 0.156,
                                color: AppColor.addtocartbutton,
                                child: Center(
                                  child: Text(
                                    "CHECK",
                                    style: TextStyle(
                                        fontFamily: "Heading",
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 1.5,
                  width: 360,
                  color: Colors.black.withOpacity(0.05),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  height: forheight * 0.43,
                  width: forWidth * 0.93,
                  //color: Colors.blue.withOpacity(0.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "PRODUCT DETAILS",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Heading',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selecteddescription1,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selecteddescription2,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selecteddescription3,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selecteddescription4,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selecteddescription5,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selecteddescription6,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MATERIAL & CARE",
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Heading',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selectedmaterial1,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Text(
                          selectedmaterial2,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Heading',
                            // fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "Product Code:",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Heading',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "68489668",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Heading',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "Sold By:",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Heading',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "Gharko",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Heading',
                                // fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "(Supplied By Partner)",
                            style: TextStyle(
                                fontSize: 12,
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'Heading',
                                color: Colors.black.withOpacity(0.4)
                                // fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Ratings & Reviews",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Heading',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 2,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  width: forWidth * 0.9,
                  height: 180,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: forWidth * 0.45,
                        height: 140,
                        child: Center(
                          child: Container(
                            height: 90,
                            width: 128,
                            //  color: Colors.green,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 38,
                                    ),
                                    Text(
                                      "$selectedrating",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: "Heading",
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        "/5",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Heading",
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "⭑",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xffFFC246),
                                      ),
                                    ),
                                    Text(
                                      "⭑",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xffFFC246),
                                      ),
                                    ),
                                    Text(
                                      "⭑",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xffFFC246),
                                      ),
                                    ),
                                    Text(
                                      "⭑",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xffFFC246),
                                      ),
                                    ),
                                    Text(
                                      "⭑",
                                      style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.black.withOpacity(0.1)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        //  color: Colors.blue,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      Container(
                        width: forWidth * 0.45,
                        height: 140,
                        child: Center(
                          child: Container(
                            height: 100,
                            width: 128,
                            // color: Colors.teal,
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.teal,
                                    child: Center(
                                      child: Icon(
                                        Icons.people,
                                        color: Colors.white,
                                        size: 29,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Customers Reviews",
                                  style: TextStyle(
                                      fontFamily: "Heading",
                                      letterSpacing: 0.4,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "See All >>",
                                  style: TextStyle(
                                      // fontFamily: "SubtextBold",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.blue),
                                )
                              ],
                            ),
                          ),
                        ),
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "SIMILAR PRODUCTS",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Heading',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  width: forWidth * 0.9,
                  height: 348,
                  //  color: Colors.teal,
                  child: Image.asset("assets/cover.png"),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 60,
                  ),
                  Container(
                    height: 35,
                    width: 106,
                    child: Center(
                      child: Text(
                        "more",
                        style: TextStyle(
                          fontFamily: "SubtextBold",
                          fontSize: 15,
                          color: Color(0xffE30045),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.1)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, bottom: 5),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          LineIcons.arrow_up,
                          color: Color(0xffE30045),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.black.withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
