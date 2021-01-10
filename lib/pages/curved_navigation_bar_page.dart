import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class CurvedNavigationBarPage extends StatefulWidget {

  @override
  _CurvedNavigationBarPageState createState() => _CurvedNavigationBarPageState();
}

class _CurvedNavigationBarPageState extends State<CurvedNavigationBarPage> {
  
  int _page = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curved navigation bar"),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            children: [
              Text(this._page.toString(),textScaleFactor: 10.0,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50,
        items: [
          Icon(Icons.add,size:30),
          Icon(Icons.list,size:30),
          Icon(Icons.compare_arrows,size:30),
          Icon(Icons.call_split,size:30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.green,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index){
          setState(() {
            this._page = index;
          });
        },
      ),
    );
  }

}