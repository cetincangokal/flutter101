import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/%C4%B1con_learn.dart';
import 'package:flutter_application_1/101/app_bar_learn.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/color_learn.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_widget_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        iconTheme: IconThemeData(
          color: Colors.blueGrey,
          size: 50,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.red,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
      ),
      home: CardLearnView(),
    );
  }
}
