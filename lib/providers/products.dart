import 'package:flutter/material.dart' ;
import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: 'keyboard1',
        title: 'Monet’s Pond',
        description: 'Bàn phím cơ AKKO 3087 v2 Monet’s Pond (Akko switch v2)',
        price: 29.99,
        imageUrl:
        "https://akkogear.com.vn/wp-content/uploads/2020/06/ban-phim-co-akko-3108-v2-monets-pond-akko-switch-v2-05-768x768.jpg"
    ),
    Product(
      id: 'keyboard2',
      title: 'Ocean Star',
      description: 'Bàn phím cơ Akko 3084SP Ocean Star',
      price: 59.99,
      imageUrl:
      'https://akkogear.com.vn/wp-content/uploads/2020/11/AKKO-3108DS-Horizon-06-768x768.jpg',
    ),
    Product(
      id: 'keyboard3',
      title: 'ACR61',
      description: 'Bàn phím cơ AKKO ACR61 White (Hotswap / RGB / AKKO CS sw Jelly White)',
      price: 29.99,
        imageUrl:
        "https://www.playzone.vn/image/catalog/san%20pham/akko/3087%20v2/Steam%20Engine/AKKO_3087_Steam_Engine_02.jpg"
    ),
    Product(
      id: 'keyboard4',
      title: 'Horizon',
      description: 'Bàn phím cơ AKKO 3087 v2 DS Horizon - Akko switch v2',
      price: 39.99,
      imageUrl:
      'https://www.playzone.vn/image/catalog/san%20pham/akko/3108%20v2/One%20Piece%20%E2%80%93%20Luffy/ban-phim-co-akko-3108-v2-one-piece-luffy-05.jpg',
    ),
    Product(
        id: 'keyboard5',
        title: 'Monet’s Pond',
        description: 'Bàn phím cơ AKKO 3087 v2 Monet’s Pond (Akko switch v2)',
        price: 29.99,
        imageUrl:
        "https://www.playzone.vn/image/catalog/san%20pham/akko/3098B/Multi-modes%20NEON/ban-phim-co-akko-3098b-multi-modes-neon-03.jpg"
    ),
    Product(
      id: 'keyboard6',
      title: 'World Tour Tokyo',
      description: 'Bàn phím cơ AKKO 3068B Multi-modes World Tour Tokyo R2 (Bluetooth 5.0 / Wireless 2.4Ghz / Hotswap / Foam tiêu âm / AKKO CS Jelly sw)',
      price: 59.99,
      imageUrl:
      'https://www.playzone.vn/image/catalog/san%20pham/akko/3068B/ak6-1.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}