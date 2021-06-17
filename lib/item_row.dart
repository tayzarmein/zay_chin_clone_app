import 'package:flutter/material.dart';
import 'constants.dart';
import 'item.dart';

class ItemRow extends StatelessWidget {
  final String itemCategory;
  final List<Item> itemList;

  ItemRow({required this.itemCategory, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Color(0xFFFFFFFF),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      itemCategory,
                      style: kLabelTextStyle,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFD9DFE2)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    // side: BorderSide(color: Colors.red),
                                    borderRadius:
                                        BorderRadius.circular(18.0)))),
                        child: Text(
                          'View All',
                          style: kAddToCartTextStyle,
                        )),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: itemList,
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
