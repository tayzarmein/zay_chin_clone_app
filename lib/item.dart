import 'package:clone_zay_chin/item_detail.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Item extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final ImageProvider itemImage;

  Item(
      {required this.itemName,
      required this.itemPrice,
      required this.itemImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ItemDetail()));
          },
          child: CircleAvatar(
            backgroundImage: itemImage,
            radius: 40.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          itemName,
          style: kLabelTextStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          itemPrice,
          style: kPriceTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFD9DFE2)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)))),
              child: Text(
                'Add to Cart',
                style: kAddToCartTextStyle,
              )),
        )
      ],
    );
  }
}
