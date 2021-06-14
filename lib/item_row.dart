import 'package:flutter/material.dart';
import 'constants.dart';
import 'item.dart';

class ItemRow extends StatelessWidget {
  // final String itemName;
  // final String itemPrice;
  // final ImageProvider itemImage;

  // ItemRow(
  //     {required this.itemName,
  //     required this.itemPrice,
  //     required this.itemImage});
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
                      'Fresh Fruits',
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
                  children: [
                    Item(
                      itemName: 'Sweet_corn.png',
                      itemPrice: '1000 Ks',
                      itemImage: AssetImage('images/sweet_corn.png'),
                    ),
                    Item(
                      itemName: 'Apple',
                      itemPrice: '1500 Ks',
                      itemImage: AssetImage('images/banana.png'),
                    ),
                    Item(
                      itemName: 'Carrot',
                      itemPrice: '700 Ks',
                      itemImage: AssetImage('images/carrot.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Item(
                      itemName: 'Milo',
                      itemPrice: '2000 Ks',
                      itemImage: AssetImage('images/milo.jpg'),
                    ),
                    Item(
                      itemName: 'Nescafe',
                      itemPrice: '2500 Ks',
                      itemImage: AssetImage('images/nescafe.jpg'),
                    ),
                    Item(
                      itemName: 'Lactasoy',
                      itemPrice: '1800 Ks',
                      itemImage: AssetImage('images/lactasoy.png'),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}
