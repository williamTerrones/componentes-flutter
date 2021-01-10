import 'package:componentesFlutter/screens/icon_example.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';


class CodeViewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code View"),
      ),
      body: WidgetWithCodeView(
        child:IconExample(),
        sourceFilePath:"lib/screens/icon_example.dart",
      ) ,
    );
  }
}