import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';


class BubledNavigationBarPage extends StatefulWidget {

  @override
  _BubledNavigationBarPageState createState() => _BubledNavigationBarPageState();
}

class _BubledNavigationBarPageState extends State<BubledNavigationBarPage> {

  int _currentIndex = 0;

  void _onChangePage(int index){
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bubled Navigation Bar"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2, 
        onTap: this._onChangePage,
        currentIndex: this._currentIndex,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16), 
        ),
        items: [
          this._bubbleItem(Icons.dashboard, Colors.red,"Dashboard"),
          this._bubbleItem(Icons.access_time, Colors.deepPurple,"Time"),
          this._bubbleItem(Icons.folder_open, Colors.indigo,"Folder"),
          this._bubbleItem(Icons.menu, Colors.green,"Menu"),
        ],
      ),
    );
  }

  BubbleBottomBarItem _bubbleItem(IconData icon, Color color, String title){
    
    return BubbleBottomBarItem(
      backgroundColor: color,
      icon: Icon(
        icon,
        color: Colors.black,
      ),
      activeIcon: Icon(
        Icons.dashboard,
        color: color,
      ),
      title: Text(title)
    );

  }

}