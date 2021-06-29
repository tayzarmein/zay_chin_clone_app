import 'package:clone_zay_chin/categories.dart';
import 'package:clone_zay_chin/item.dart';
import 'package:flutter/material.dart';
import 'item_row.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Widget> widgetOptions = [
    ListView(
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
            Item(
                itemName: 'Banana',
                itemPrice: '700 Ks',
                itemImage: AssetImage('images/banana.png')),
            Item(
                itemName: 'Banana',
                itemPrice: '700 Ks',
                itemImage: AssetImage('images/banana.png')),
            Item(
                itemName: 'Banana',
                itemPrice: '700 Ks',
                itemImage: AssetImage('images/banana.png'))
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
                itemImage: AssetImage('images/max_plus.jpg')),
            Item(
                itemName: 'Max Plus',
                itemPrice: '600 Ks',
                itemImage: AssetImage('images/max_plus.jpg')),
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
    Category(),
    Text('Menu')
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zay Chin'),
          actions: [
            IconButton(
                onPressed: () {
                  print('search button');
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('shopping cart button');
                },
                icon: Icon(Icons.shopping_cart))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
          ],
        ),
        body: Center(child: widgetOptions.elementAt(selectedIndex)));
  }
}
