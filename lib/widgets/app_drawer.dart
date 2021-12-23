import 'package:flutter/material.dart';
import 'package:kleyboardshop/screens/orders_screen.dart';
import 'package:kleyboardshop/screens/products_overview_screen.dart';
import 'package:kleyboardshop/screens/profile.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Hello Anh Tân!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Akko keyboard'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProductsOverviewScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.male),
            title: const Text('Profile'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProFile.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.outbox_outlined),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),


        ],
      ),
    );
  }
}