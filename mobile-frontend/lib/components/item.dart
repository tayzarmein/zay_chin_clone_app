import 'package:clone_zay_chin/components/item_detail.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class Item extends StatefulWidget {
  final String productName;
  final int productPrice;
  final String productImage;

  Item(
      {required this.productName,
      required this.productPrice,
      required this.productImage});

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var chosenQty = 0;

  Widget _buildAddToCart() {
    if (chosenQty == 0) {
      return ElevatedButton(
          onPressed: () {
            setState(() {
              chosenQty++;
              print(chosenQty);
            });
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFFD9DFE2)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)))),
          child: Text(
            'Add to Cart',
            style: kAddToCartTextStyle,
          ));
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
                            productName: widget.productName,
                            productImage: widget.productImage,
                            productPrice: widget.productPrice,
                          )));
            },
            child: CircleAvatar(
              backgroundImage: Image.network(widget.productImage).image,
              radius: 40.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.productName,
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
            widget.productPrice.toString(),
            style: kPriceTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildAddToCart(),
          )
        ],
      ),
    );
  }
}
