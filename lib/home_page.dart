import 'package:clone_zay_chin/category_view.dart';
import 'package:clone_zay_chin/home_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  // DataStore store = DataStore();
  //todo add some data

  //initstate
  //setstate(store);

  List<Widget> widgetOptions = [HomeView(), CategoryView(), Text('Menu')];

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
