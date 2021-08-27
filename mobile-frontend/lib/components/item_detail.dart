import 'dart:ui';

import 'package:clone_zay_chin/constants.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final String productName;
  final int productPrice;
  final String productImage;

  ItemDetail(
      {required this.productName,
      required this.productImage,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    // Image changeImageSize = Image(
    //     image: ResizeImage(Image.network(productImage).image,
    //         width: 500, height: 500));

    return Scaffold(
        appBar: AppBar(
          title: Text('Zay Wal'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(onPressed: () {}, child: Text('Add to cart')),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Color(0xFFFFFFFF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.network(
                        productImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    // Image.network(productImage),
                    // Image.asset(
                    //   'images/apple.png',
                    //   scale: 2.0,
                    // ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            // 'Apple Fuji (Thai) 1pcs',
                            productName,
                            style: kItemDetailTextStyle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            // '1000 Ks',
                            productPrice.toString(),
                            style: kPriceTextStyle,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                color: Color(0xFFFFFFFF),
                child: Row(
                  children: [Text('Related Products')],
                ),
              ),
            )
          ],
        ));
  }
}
