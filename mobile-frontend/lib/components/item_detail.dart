import 'dart:ui';

import 'package:clone_zay_chin/constants.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
  final String productName;
  final int productPrice;
  final String productImage;

  ItemDetail(
      {required this.productName,
      required this.productImage,
      required this.productPrice});

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int chosenQty = 0;

  Widget _buildAddToCart() {
    if (chosenQty == 0) {
      return ElevatedButton(
          onPressed: () {
            setState(() {
              chosenQty++;
            });
          },
          child: Text('Add to cart'));
    } else {
      return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    chosenQty--;
                  });
                },
                icon: Icon(chosenQty == 1 ? Icons.delete : Icons.remove),
                iconSize: 15,
              ),
              Text('$chosenQty'),
              IconButton(
                onPressed: () {
                  setState(() {
                    chosenQty++;
                  });
                },
                icon: Icon(Icons.add),
                iconSize: 15,
              )
            ],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.productName),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
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
                        widget.productImage,
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
                            widget.productName,
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
                            widget.productPrice.toString(),
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
            ),
            _buildAddToCart(),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }
}
