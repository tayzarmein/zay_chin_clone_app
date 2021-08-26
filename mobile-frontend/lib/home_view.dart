// import 'package:clone_zay_chin/data_store.dart';
import 'package:clone_zay_chin/data_models/category.dart';
import 'package:clone_zay_chin/item_row.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // DataStore store = DataStore();
  final getCategoriesQuery = """
  query Query {
  categories {
    name
    products {
      _id
      name
      description
      priceUnit
      price
      image
      category
      subcategory
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    // var categories = store.getCategories();

    // var categoriesUIs = categories
    //     .map((category) => ItemRow(
    //           categoryName: category.name,
    //           products: store.getAllProductsFromCategory(category),
    //         ))
    //     .toList();

    // return ListView(children: categoriesUIs);
    return Query(
        options: QueryOptions(document: gql(getCategoriesQuery)),
        builder: (QueryResult result, {refetch, fetchMore}) {
          //todo: add UI

          //Show Loading UI when loading
          if (result.isLoading) {
            return Text('Loading');
          }

          //Show actual data when success
          if (result.source != null) {
            // print(result.data?["categories"]);

            List resultList = result.data?["categories"];

            List<Category> listOfCategories = resultList
                .map((eachCategory) => Category.fromJson(eachCategory))
                .toList();

            List<Widget> listOfItemRows = [];
            listOfCategories.forEach((element) {
              listOfItemRows.add(ItemRow(
                  categoryName: element.name, products: element.products));
            });

            return Scaffold(
              body: ListView(children: listOfItemRows),
            );
          }

          //this code should not be reached
          return Text('unexpected');
        });
  }
}
