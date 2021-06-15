import 'package:clone_zay_chin/constants.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zay Chin'),
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
              flex: 2,
              child: Container(
                color: Color(0xFFEFEFD0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/apple.png'),
                      radius: 100.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Apple Fuji (Thai) 1pcs',
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
                            '1000 Ks',
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
                color: Color(0xFFEFEFD0),
                child: Row(
                  children: [Text('Related Products')],
                ),
              ),
            )
          ],
        ));
  }
}
