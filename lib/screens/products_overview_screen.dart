import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:kleyboardshop/widgets/bottom_menu_bar.dart';
import 'package:kleyboardshop/widgets/products_grid.dart';
import 'package:provider/provider.dart' ;
import '../widgets/products_grid.dart' ;
import '../widgets/badge.dart' ;
import '../providers/cart.dart';
import './cart_screen.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);
  static const routeName = '/product-overview';
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavorites = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.755,
            decoration: BoxDecoration(
              color:  Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Search keyboards",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                  )
              ),
            ),
          ),
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.Favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
            icon: const Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('Yêu thích của tôi'),
                value: FilterOptions.Favorites,
              ),
              const PopupMenuItem(
                child: Text('Hiển thị tất cả'),
                value: FilterOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ],
      ),
      body:ProductsGrid(_showOnlyFavorites),
      bottomNavigationBar: BottomMenuBar(),
    );
  }
}