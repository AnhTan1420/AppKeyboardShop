import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kleyboardshop/screens/box_chat_screen.dart';
import 'package:kleyboardshop/screens/forgotpass_screen.dart';
import 'package:kleyboardshop/screens/profile.dart';
import 'package:kleyboardshop/screens/setting_screen.dart';
import 'package:provider/provider.dart';
import './screens/cart_screen.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products.dart';
import './providers/cart.dart';
import './providers/orders.dart';
import './screens/orders_screen.dart';
import './screens/signin_screen.dart';
import './screens/signup_screen.dart';
import './screens/profile.dart';
import './screens/setting_screen.dart';


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main(){
	HttpOverrides.global = new MyHttpOverrides();
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lat',
          ),
          home: LoginScreen(),
          routes: {
            ProductsOverviewScreen.routeName: (ctx) => const ProductsOverviewScreen(),
            ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
            CartScreen.routeName: (ctx) => const CartScreen(),
            SignUpScreen.routeName: (ctx) => SignUpScreen(),
            LoginScreen.routeName: (ctx) => LoginScreen(),
            ForgotScreen.routeName: (ctx) => ForgotScreen(),
            ProFile.routeName: (ctx) => ProFile(),
            OrdersScreen.routeName: (ctx) => const OrdersScreen(),
            SettingsPage.routeName: (ctx) => SettingsPage(),
          }),
    );
  }
}
