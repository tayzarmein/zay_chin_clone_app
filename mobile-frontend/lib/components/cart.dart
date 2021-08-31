import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var chosenQty = 0;

  Card _buildItemCart() {
    return Card(
        child: ListTile(
            leading: FlutterLogo(
              size: 50,
            ),
            title: Text('Title'),
            subtitle: Text('SubTitle'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        chosenQty--;
                      });
                    },
                    icon: Icon(Icons.remove)),
                Text('$chosenQty'),
                IconButton(
                    onPressed: () {
                      setState(() {
                        chosenQty++;
                      });
                    },
                    icon: Icon(Icons.add))
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cart',
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: ListView(
          children: [
            _buildItemCart(),
            _buildItemCart(),
            _buildItemCart(),
            _buildItemCart(),
            _buildItemCart(),
            _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
            // _buildItemCart(),
          ],
        ),
        bottomSheet: Row(
          children: [
            Expanded(
                child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Divider(
                    thickness: 1,
                    height: 1,
                    indent: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Cart'),
                      Icon(Icons.arrow_forward_ios),
                      Text('Checkout'),
                      Icon(Icons.arrow_forward_ios),
                      Text('Success')
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                  ),
                  Text('20000 Ks'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Continue to checkout'),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(350, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              ),
            )),
          ],
        ));
  }
}
