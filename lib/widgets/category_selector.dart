import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  CategorySelector({Key key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ["Vegan food", "Vegetarian food"];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              height: 90.0,
              color: Colors.red,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext contex, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == selectedIndex
                              ? Colors.white
                              : Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          letterSpacing: 1.2),
                      ),
                    ),
                  );
                }),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.only(topLeft: Radius.circular(75.0))
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 20.0),
              children: <Widget>[
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.only(right: 15.0),
                  width: MediaQuery.of(context).size.width - 30.0,
                  height: MediaQuery.of(context).size.height - 240.5,
                  child: GridView.count(
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 3,
                    primary: false,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 0.8,
                    children: <Widget>[
                      _buildMenuItem('BURGER', Icons.fastfood),
                      _buildMenuItem('TEA', Icons.local_drink),
                      _buildMenuItem('BEER', Icons.local_drink),
                      _buildMenuItem('CAKE', Icons.cake),
                      _buildMenuItem('COFFEE', Icons.cloud),
                      _buildMenuItem('MEAT', Icons.restaurant),
                      _buildMenuItem('ICE', Icons.insert_chart),
                      _buildMenuItem('FISH', Icons.filter_tilt_shift),
                      _buildMenuItem('DONUTS', Icons.donut_small),
                      _buildMenuItem('SALAD', Icons.donut_small)
                    ],
                  ),
                )
              ],
            ),
            )
          ],
        ));
  }
}
  Widget _buildMenuItem(String foodName, iconData) {
      var selectedFood = 'CAKE';
    return Card(
      elevation: 4,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () {},
        child: AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 300),
            height: selectedFood == foodName ? 100.0 : 75.0,
            width: selectedFood == foodName ? 100.0 : 75.0,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                iconData,
                color: Colors.grey,
                size: 25.0,
              ),
              SizedBox(height: 12.0),
              Text(foodName,
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontSize: 10.0))
            ]))),
    );
  }
