import 'package:flutter/material.dart';
import 'constants.dart';
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
        children: [
          ItemRow(),
          SizedBox(
            height: 10.0,
          ),
          ItemRow(),
          SizedBox(
            height: 10.0,
          ),
          ItemRow()
        ],
      ),
    );
  }
}
