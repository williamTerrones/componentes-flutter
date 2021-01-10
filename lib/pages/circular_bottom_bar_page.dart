import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';


class CircularBottomBarPage extends StatefulWidget {

  @override
  _CircularBottomBarPageState createState() => _CircularBottomBarPageState();
}

class _CircularBottomBarPageState extends State<CircularBottomBarPage> {

  int selectedPos = 0;
  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.blue,labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.search, "Search", Colors.orange,labelStyle: TextStyle(fontWeight: FontWeight.bold)),
    TabItem(Icons.report, "Reports", Colors.red),
    TabItem(Icons.notifications,"Notification", Colors.cyan)
  ]);

  CircularBottomNavigationController _circularBottomNavigationController;

  @override
  void initState() { 
    
    super.initState();

    this._circularBottomNavigationController = new CircularBottomNavigationController(this.selectedPos);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular bottom navigation bar"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: this.bottomNavBarHeight),
            child: this._bodyContainer(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: this._bottomNav(),
          )
        ],
      ),
    );
  }

  Widget _bodyContainer(){

    Color selectedColor = this.tabItems[this.selectedPos].circleColor;

    String slogan;

    switch(this.selectedPos){
      case 0:
        slogan = "Home";
        break;
      case 1:
        slogan = "Search";
        break;
      case 2:
        slogan = "Reports";
        break;
      case 3:
        slogan = "Notification";
        break;
    }

    return Container(
      color: selectedColor,
      child: Center(
        child: Text(
          slogan,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );

  }

  Widget _bottomNav(){
    return CircularBottomNavigation(
      this.tabItems,
      controller: this._circularBottomNavigationController,
      barHeight: this.bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int pos){
        setState(() {
          this.selectedPos = pos;
        });
      },
    );
  }

}