import 'package:clone_zay_chin/data_store.dart';
import 'package:clone_zay_chin/item_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DataStore store = DataStore();

  @override
  Widget build(BuildContext context) {
    var categories = store.getCategories();

    var categoriesUIs = categories
        .map((category) => ItemRow(
              categoryName: category.name,
              products: store.getAllProductsFromCategory(category),
            ))
        .toList();

    return ListView(children: categoriesUIs);
  }
}
