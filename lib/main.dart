import 'package:contact/routes/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final RouteGenerateContact _forRouter = RouteGenerateContact();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact app',
        theme: ThemeData.dark(),
        initialRoute: '/',
        onGenerateRoute: _forRouter.generateContact);
  }
}
