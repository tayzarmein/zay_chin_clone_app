import 'package:clone_zay_chin/sub_categories.dart';
import 'package:flutter/material.dart';
import 'data_store.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataStore store = DataStore();

    List<Widget> expansionTiles = [];

    var categories = store.getCategories();

    categories.forEach((category) {
      List<SubCategory> subCategories =
          store.getSubCategoriesFromCategory(category);

      List<Widget> listTiles = subCategories
          .map((subcategory) => ListTile(
                subtitle: Text(subcategory.name),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SubCategoryPage(store
                              .getProductsFromSubcategory(subcategory.name))));
                },
              ))
          .toList();

      expansionTiles.add(ExpansionTile(
        title: Text(category.name),
        children: listTiles,
      ));
    });

    return Scaffold(
        body: ListView(
      children: expansionTiles,
    ));
  }
}
