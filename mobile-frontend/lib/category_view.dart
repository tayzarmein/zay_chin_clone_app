import 'package:clone_zay_chin/data_models/category.dart';
import 'package:clone_zay_chin/data_models/product.dart';
import 'package:clone_zay_chin/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

// import 'data_store.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({
    Key? key,
  }) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
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
    return Query(
        options: QueryOptions(document: gql(getCategoriesQuery)),
        builder: (QueryResult result, {refetch, fetchMore}) {
          List resultList = result.data?["categories"];

          List<Category> listOfCategory = resultList
              .map((eachCategory) => Category.fromJson(eachCategory))
              .toList();

          List<Widget> expansionTiles = [];

          listOfCategory.forEach((category) {
            List<Product> listOfProducts = category.products;
            List<Widget> listTiles = listOfProducts
                .map((product) => ListTile(
                      subtitle: Text(product.subcategory),
                    ))
                .toList();

            expansionTiles.add(
                ExpansionTile(title: Text(category.name), children: listTiles));
          });
          return Scaffold(
            body: ListView(
              children: expansionTiles,
            ),
          );
        });
    // DataStore store = DataStore();

    // List<Widget> expansionTiles = [];

    // // var categories = store.getCategories();

    // categories.forEach((category) {
    //   List<SubCategory> subCategories =
    //       store.getSubCategoriesFromCategory(category);

    //   List<Widget> listTiles = subCategories
    //       .map((subcategory) => ListTile(
    //             subtitle: Text(subcategory.name),
    //             onTap: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => SubCategoryPage(store
    //                           .getProductsFromSubcategory(subcategory.name))));
    //             },
    //           ))
    //       .toList();

    //   expansionTiles.add(ExpansionTile(
    //     title: Text(category.name),
    //     children: listTiles,
    //   ));
    // });

    // return Scaffold(
    //     body: ListView(
    //   children: expansionTiles,
    // ));
  }
}
