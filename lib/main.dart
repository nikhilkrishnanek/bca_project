import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/common/register.dart';
import 'package:flutter_application_1/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // 
        primarySwatch: Colors.blue,
      ),
      home: Home_Screen(),
    );
  }
}

