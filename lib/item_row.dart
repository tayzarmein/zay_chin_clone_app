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
          color: Color(0xFFEFEFD0),
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
                        child: Text(
                          'View All',
                          style: kAddToCartTextStyle,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: itemList,
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }
}
