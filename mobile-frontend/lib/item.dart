import 'package:clone_zay_chin/item_detail.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Item extends StatelessWidget {
  final String productName;
  final int productPrice;
  final Image productImage;

  Item(
      {required this.productName,
      required this.productPrice,
      required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemDetail()));
            },
            child: CircleAvatar(
              backgroundImage: productImage.image,
              radius: 40.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            productName,
            style: kLabelTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            productPrice.toString(),
            style: kPriceTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFD9DFE2)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)))),
                child: Text(
                  'Add to Cart',
                  style: kAddToCartTextStyle,
                )),
          )
        ],
      ),
    );
  }
}
