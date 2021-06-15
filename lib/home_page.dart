import 'package:clone_zay_chin/item.dart';
import 'package:flutter/material.dart';
import 'item_row.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zay Chin'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.category), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
      ]),
      body: ListView(
        shrinkWrap: true,
        children: [
          ItemRow(
            itemCategory: 'Fresh Fruits',
            itemList: [
              Item(
                  itemName: 'Sweet corn',
                  itemPrice: '1000 Ks',
                  itemImage: AssetImage('images/sweet_corn.png')),
              Item(
                  itemName: 'Apple',
                  itemPrice: '1500 Ks',
                  itemImage: AssetImage('images/apple.png')),
              Item(
                  itemName: 'Carrot',
                  itemPrice: '700 Ks',
                  itemImage: AssetImage('images/carrot.png')),
              Item(
                  itemName: 'Banana',
                  itemPrice: '700 Ks',
                  itemImage: AssetImage('images/banana.png')),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          ItemRow(
            itemCategory: 'Beverages',
            itemList: [
              Item(
                  itemName: 'Milo',
                  itemPrice: '2000 Ks',
                  itemImage: AssetImage('images/milo.jpg')),
              Item(
                  itemName: 'Nescafe',
                  itemPrice: '2500 Ks',
                  itemImage: AssetImage('images/nescafe.jpg')),
              Item(
                  itemName: 'Lactasoy',
                  itemPrice: '1800 Ks',
                  itemImage: AssetImage('images/lactasoy.png')),
              Item(
                  itemName: 'Max Plus',
                  itemPrice: '600 Ks',
                  itemImage: AssetImage('images/max_plus.jpg'))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          ItemRow(
            itemCategory: 'Alcohols',
            itemList: [
              Item(
                  itemName: 'Gold Label',
                  itemPrice: '60000 Ks',
                  itemImage: AssetImage('images/gold_label.jpg')),
              Item(
                  itemName: 'Yamakazi',
                  itemPrice: '260000 Ks',
                  itemImage: AssetImage('images/yamakazi.jpg')),
              Item(
                  itemName: 'Glenfiddich',
                  itemPrice: '52400 Ks',
                  itemImage: AssetImage('images/glenfiddich.jpg')),
              Item(
                  itemName: 'Hibiki',
                  itemPrice: '244000 Ks',
                  itemImage: AssetImage('images/hibiki.png'))
            ],
          ),
        ],
      ),
    );
  }
}
