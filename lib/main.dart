import 'package:cocina_tu/src/pages/home_page.dart';
import 'package:cocina_tu/widgets/category_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cocina',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}