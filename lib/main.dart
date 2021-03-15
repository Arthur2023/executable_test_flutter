import 'package:executable_test_flutter/params.dart';
import 'package:executable_test_flutter/ui/home_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  try {
    received();
    params = args[0];
  } catch (e) {
    print(e);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: params,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
