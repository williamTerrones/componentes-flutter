import 'package:flutter/material.dart';

import '../routes.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Flutter"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: this._listaRutas(context),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _listaRutas(BuildContext context){

    final List<Widget> items = [];

    routes.forEach((key, value) { 
      items.add(
        RaisedButton(
          textColor: Colors.white,
          child: Text(key),
          color: Colors.blue,
          onPressed: (){
            Navigator.of(context).pushNamed(key);
          }
        ),
      );
    });

    return items;

  }

}