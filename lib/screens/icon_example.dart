import 'package:flutter/material.dart';


class IconExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
      ),
    );
  }
}