import 'package:flutter/material.dart';
import 'package:kleyboardshop/widgets/bottom_menu_bar.dart';
import 'package:provider/provider.dart' show Provider;
import '../providers/orders.dart' show Orders;
import '../widgets/order_item.dart';
import '../widgets/bottom_menu_bar.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đơn hàng đã mua'),
      ),
      bottomNavigationBar: BottomMenuBar(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}