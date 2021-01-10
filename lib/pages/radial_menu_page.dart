import 'package:fl_radial_menu/fl_radial_menu.dart';
import 'package:flutter/material.dart';


class RadialMenuPage extends StatelessWidget {

  final items = [
    RadialMenuItem(
      Icon(Icons.camera), 
      Colors.red, 
      () => {},
    ),
    RadialMenuItem(
      Icon(Icons.calendar_today), 
      Colors.green, 
      () => {},
    ),
    RadialMenuItem(
      Icon(Icons.camera), 
      Colors.red, 
      () => {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radial Menu Page"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            RadialMenu(items, fanout: Fanout.bottomRight,),
            RadialMenu(items, fanout: Fanout.bottom,),
            RadialMenu(items, fanout: Fanout.bottomLeft,),
            RadialMenu(items, fanout: Fanout.top,),
          ],
        ),
      ),
    );
  }
}