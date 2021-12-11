import 'package:flutter/material.dart';
import 'package:oyebusy_ui/screens/address.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OyeBusy Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Address(),
    );
  }
}
