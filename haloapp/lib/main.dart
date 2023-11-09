import 'package:flutter/material.dart';
import 'package:haloapp/routes/router.dart';
import 'package:haloapp/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: router,
      initialRoute: kHomeRoute,
    );
  }
}
