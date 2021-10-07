import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:provider/provider.dart';
import 'package:clone_zay_chin/data_models/cart.dart';

enum deliveryDate {
  Tomorrow,
  DayDelivery,
  TodayDate,
  Custom,
}

enum paymentMethod { CashOnDelivery, AYAPay, KBZPay, VisaMaster }

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  deliveryDate _dayDelivery = deliveryDate.DayDelivery;
  paymentMethod _cashOnDelivery = paymentMethod.CashOnDelivery;

  void changeDeliveryDateState(deliveryDate? value) {
    setState(() {
      _dayDelivery = value!;
    });
  }

  void changePaymentMethodState(paymentMethod? value) {
    setState(() {
      _cashOnDelivery = value!;
    });
  }

  TextFormField _buildTextFormField(String hintText) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(Icons.add),
        ),
        hintText: hintText,
      ),
      keyboardType: TextInputType.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (buildContext, cartModel, child) {
        return Scaffold(
          appBar: AppBar(),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          FutureBuilder(
                              future: FlutterSession().get('sessionData'),
                              builder: (context, snapshot) {
                                return Text(snapshot.data.toString());
                              })
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total'),
                          Text(cartModel.totalPrice.toString() + ' Ks')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Delivery'), Text('0 Ks')],
                      )
                    ],
                  ),
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [Text('Address')],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.location_on),
                        ),
                        hintText: 'Address',
                      ),
                      keyboardType: TextInputType.text,
                    )
                  ],
                ),
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [Text('Township')],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(Icons.location_on),
                        ),
                        hintText: 'Township',
                      ),
                      keyboardType: TextInputType.text,
                    )
                  ],
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [Text('Delivery Date')],
                    ),
                    Row(children: [
                      Row(
                        children: [
                          Radio(
                            value: deliveryDate.Tomorrow,
                            groupValue: _dayDelivery,
                            onChanged: changeDeliveryDateState,
                          ),
                          Text('Tomorrow')
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: deliveryDate.DayDelivery,
                            groupValue: _dayDelivery,
                            onChanged: changeDeliveryDateState,
                          ),
                          Text('2 Day Delivery')
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: deliveryDate.TodayDate,
                            groupValue: _dayDelivery,
                            onChanged: changeDeliveryDateState,
                          ),
                          Text('Today Date')
                        ],
                      )
                    ]),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: deliveryDate.Custom,
                              groupValue: _dayDelivery,
                              onChanged: changeDeliveryDateState,
                            ),
                            Text('Custom')
                          ],
                        )
                      ],
                    )
                  ],
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [Text('Delivery Time')],
                    ),
                    Row(children: [Icon(Icons.timelapse), Text('Anytime')])
                  ],
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text('Payment Method')],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: paymentMethod.CashOnDelivery,
                            groupValue: _cashOnDelivery,
                            onChanged: changePaymentMethodState),
                        Text('Cash On Delivery')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: paymentMethod.AYAPay,
                          groupValue: _cashOnDelivery,
                          onChanged: changePaymentMethodState,
                        ),
                        Text('AYA Pay')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: paymentMethod.KBZPay,
                          groupValue: _cashOnDelivery,
                          onChanged: changePaymentMethodState,
                        ),
                        Text('KBZ Pay')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: paymentMethod.VisaMaster,
                          groupValue: _cashOnDelivery,
                          onChanged: changePaymentMethodState,
                        ),
                        Text('Visa / Master')
                      ],
                    ),
                  ],
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: _buildTextFormField('Add Promo Code'),
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: _buildTextFormField('Add note or special instruction'),
                color: Colors.blue,
              )
            ],
          ),
          bottomNavigationBar: Row(
            children: [
              Expanded(
                  child: Container(
                height: 150,
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
                    Text('dummy'),
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
          ),
        );
      },
    );
  }
}
