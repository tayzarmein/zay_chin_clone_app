import 'package:clone_zay_chin/data_store.dart';
import 'package:clone_zay_chin/item_row.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DataStore store = DataStore();
  final getCategoriesQuery = """
  query Query {
  products {
    _id
    name
    description
    price
    priceUnit
    image
    category
    subcategory
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
            print(result.data?["products"]);
            return Text('Success');
          }

          //this code should not be reached
          return Text('unexpected');
        });
  }
}
