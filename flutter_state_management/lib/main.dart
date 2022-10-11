import 'package:flutter/material.dart';
import 'package:flutter_state_management/providers/cart.dart';
import 'package:flutter_state_management/providers/order.dart';
import 'package:flutter_state_management/screens/cart_screen.dart';
import 'package:flutter_state_management/screens/orders_screen.dart';
import 'package:provider/provider.dart';

import 'package:flutter_state_management/screens/product_detail_screen.dart';
import 'package:flutter_state_management/screens/products_overview_screen.dart';

import './providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (cxt) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (context) => Orders(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routeName:(context) => CartScreen(),
          OrdersScreen.routeName:(context) => OrdersScreen()
        },
      ),
    );
  }
}
