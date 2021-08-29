import 'package:clone_zay_chin/components/item_detail.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Item extends StatelessWidget {
  final String productName;
  final int productPrice;
  final String productImage;

  Item(
      {required this.productName,
      required this.productPrice,
      required this.productImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // textBaseline: TextBaseline.alphabetic,

        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemDetail(
                            productName: productName,
                            productImage: productImage,
                            productPrice: productPrice,
                          )));
            },
            child: CircleAvatar(
              backgroundImage: Image.network(productImage).image,
              radius: 40.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            productName,
            style: kLabelTextStyle,
            // maxLines: 2,
            // textDirection: TextDirection.ltr,
            // overflow: TextOverflow.ellipsis,
            // textAlign: TextAlign.justify,
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
