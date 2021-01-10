import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';


class ColorPickerPage extends StatefulWidget {

  @override
  _ColorPickerPageState createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {

  Color _currentColor = Colors.limeAccent;

  void _onChangeColor(Color color) {
    
    setState(() {
      this._currentColor = color;
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Color picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Change color"),
              onPressed: (){
                this._mostrarAlerta();
              },
              elevation: 3,
              color: this._currentColor,
              textColor: useWhiteForeground(this._currentColor) ? Colors.white : Colors.black ,
            ),
          ],
        ),
      ),
    );

  }

  void _mostrarAlerta(){

    showDialog(
      context: context,
      builder: (BuildContext context){

        return AlertDialog(
          titlePadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.all(0),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: this._currentColor, 
              onColorChanged: this._onChangeColor,
              colorPickerWidth: 300,
              pickerAreaHeightPercent: 0.7,
              enableAlpha: true,
              displayThumbColor: true,
              showLabel: true,
              paletteType: PaletteType.hsv,
              pickerAreaBorderRadius: BorderRadius.only(
                topLeft: Radius.circular(2),
                topRight: Radius.circular(2),
              ),
            ),
          ),
        );

      }
    );

  }

}