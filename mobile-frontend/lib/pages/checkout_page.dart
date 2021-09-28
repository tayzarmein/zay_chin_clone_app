import 'package:clone_zay_chin/components/session_data.dart';
import 'package:clone_zay_chin/pages/order_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_session/flutter_session.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _phNumberController = TextEditingController();

    String addUser = """
      mutation Mutation(\$addUserName: String!, \$addUserPhNumber: String!) {
        addUser(name: \$addUserName, phNumber: \$addUserPhNumber) {
          code
          success
          message
          user {
            name
            phNumber
          }
        }
      }
    """;

    Future<void> saveSession(SessionData sessionData) async {
      await FlutterSession().set('sessionData', sessionData);
    }

    return Scaffold(
      appBar: AppBar(),
      body: Mutation(
        options: MutationOptions(
          document: gql(addUser),
          update: (GraphQLDataProxy cache, result) {
            return cache;
          },
          onCompleted: (dynamic resultData) {
            // print(resultData);
            Navigator.push(context,
                MaterialPageRoute(builder: (Context) => OrderDetailPage()));
          },
        ),
        builder: (RunMutation runMutation, result) {
          return Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register Here !',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    showCursor: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    controller: _nameController,
                    decoration: InputDecoration(
                        // labelText: 'Register with phone',
                        hintText: 'Name',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    showCursor: true,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(fontSize: 20),
                    controller: _phNumberController,
                    decoration: InputDecoration(
                        // labelText: 'Register with phone',
                        hintText: 'Phone Number (09)',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                      onPressed: () => runMutation(
                            {
                              'addUserName': _nameController.text,
                              'addUserPhNumber': _phNumberController.text
                            },
                          ),
                      child: FutureBuilder(
                        future: saveSession(SessionData(
                            _nameController.text, _phNumberController.text)),
                        builder: (context, snapshot) {
                          return Text('Continue');
                        },
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(350, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
