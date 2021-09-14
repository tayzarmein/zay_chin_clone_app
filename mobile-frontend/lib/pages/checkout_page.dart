import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            showCursor: true,
            keyboardType: TextInputType.phone,
            style: TextStyle(fontSize: 25),
            decoration: InputDecoration(
                labelText: 'Register with phone',
                hintText: 'Phone Number (09)',
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always),
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(350, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
          )
        ],
      ),
    );
  }
}
