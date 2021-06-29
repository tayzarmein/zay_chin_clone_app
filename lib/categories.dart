import 'package:clone_zay_chin/data.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> resultData = [];
    List<Widget> subCatData = [];

    var categoryData = data['data'];

    // categoryData!.map((e) => print(e));

    categoryData!.forEach((element) {
      element.forEach((key, value) {
        resultData.add(ExpansionTile(
          title: Text(key),
          children: subCatData,
        ));
        value.forEach((element) {
          subCatData.add(ListTile(
            subtitle: Text(element),
            onTap: () {},
          ));
        });
      });

      // if (element['mainCategory'] == 'Meat & Seafood') {
      //   List<String> subCategoryData = element['subCategory'] as List<String>;

      //   resultData.add(ExpansionTile(
      //       title: Text(
      //         element['mainCategory'].toString(),
      //         style: kLabelTextStyle,
      //       ),
      //       trailing: Icon(Icons.ac_unit),
      //       children: subCatData));

      //   subCategoryData.forEach((element) {
      //     subCatData.add(ListTile(
      //       subtitle: Text(element
      //           // style: kLabelTextStyle,
      //           ),
      //       onTap: () {},
      //     ));
      //   });
      // } else if (element['mainCategory'] == 'Fruits & Vegetables') {
      //   List<String> subCategoryData = element['subCategory'] as List<String>;

      //   resultData.add(ExpansionTile(
      //       title: Text(
      //         element['mainCategory'].toString(),
      //         style: kLabelTextStyle,
      //       ),
      //       trailing: Icon(Icons.ac_unit),
      //       children: subCatData));

      //   subCategoryData.forEach((element) {
      //     subCatData.add(ListTile(
      //       subtitle: Text(element
      //           // style: kLabelTextStyle,
      //           ),
      //       onTap: () {},
      //     ));
      //   });
      // }
    });

    return Scaffold(
        body: ListView(
      children: resultData,
    ));
  }
}
