import 'package:flutter/material.dart';
import 'package:finanso/Drawer/drawer.dart';
import 'package:finanso/App_config/app_config.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomDrawerExample(),
    );
  }
}



