import 'package:cocina_tu/widgets/category_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.supervised_user_circle),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.filter_list),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: (){},
            ),
          ],
        ),
        body: CategorySelector(),
        floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.orange.shade900,
          child: Container(
            height: 40.0,
            width: 40.0,
            child: SvgPicture.asset('assets/img/ensalada.svg'),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          color:Colors.transparent,
          elevation: 9.0,
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)
              ),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2 - 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.home, color: Color(0xFFEF7532),),
                    Icon(Icons.person_outline,color: Color(0xFF676E79),)
                  ],
                ),
              ),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 2 - 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.search, color: Color(0xFFEF7532),),
                    Icon(Icons.favorite_border,color: Colors.red)
                  ],
                ),
              )    
              ],
            ),
          ),
        ),
      );
  }
}