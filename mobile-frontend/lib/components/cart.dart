import 'package:clone_zay_chin/data_models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(builder: (context, cartModel, child) {
      Card _buildItemCart(CartItem cartItem) {
        return Card(
            child: ListTile(
                leading: Image(
                  image: NetworkImage(cartItem.product.image),
                ),
                title: Text(cartItem.product.name),
                subtitle: Text(cartItem.product.price.toString() + ' Ks'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          cartModel.removeProduct(cartItem.product);
                        },
                        icon: Icon(Icons.remove)),
                    Text(cartItem.count.toString()),
                    IconButton(
                        onPressed: () {
                          cartModel.addProduct(cartItem.product);
                        },
                        icon: Icon(Icons.add))
                  ],
                )));
      }

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
            children: cartModel
                .getCartItems()
                .map((cartItem) => _buildItemCart(cartItem))
                .toList(),
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
                    Text(cartModel.totalPrice.toString() + ' Ks'),
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
    });
  }
}
