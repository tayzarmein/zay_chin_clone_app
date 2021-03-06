import 'package:clone_zay_chin/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:clone_zay_chin/data_models/cart.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  final HttpLink httpLink =
      HttpLink(dotenv.env['GRAPH_URL'] ?? "http://localhost:4000/graphql");

  ValueNotifier<GraphQLClient> client = ValueNotifier(GraphQLClient(
      link: httpLink, cache: GraphQLCache(store: InMemoryStore())));
  var app = ChangeNotifierProvider(
    create: (context) => CartModel(),
    child: GraphQLProvider(
      client: client,
      child: MyApp(),
    ),
  );

  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zay Wal',
      theme: ThemeData(
        primaryColor: Color(0xFFEAEDEF),
        // scaffoldBackgroundColor: Color(0xFFEFEFD0))
        // primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
