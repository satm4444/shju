import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shju/Product_Screen.dart';
import 'package:shju/bottom_bar.dart';
import 'package:shju/loadingscreen.dart';
import 'package:shju/login_page.dart';
import 'package:shju/providers/category_provider.dart';
import 'package:shju/providers/horizontal_products_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HorizontalProducts()),
        ChangeNotifierProvider.value(value: CategoryProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (ctx) => LoginPage(),
          '/load': (ctx) => LoadingScreen(),
          '/bottombar': (ctx) => BottomBar(),
          '/productcreen': (ctx) => ProductScreen(),
        },
      ),
    );
  }
}
