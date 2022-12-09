import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/%C4%B1con_learn.dart';
import 'package:flutter_application_1/101/%C4%B1mage_learn.dart';
import 'package:flutter_application_1/101/app_bar_learn.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/color_learn.dart';
import 'package:flutter_application_1/101/column_row_learn.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';
import 'package:flutter_application_1/101/custom_widget_learn.dart';
import 'package:flutter_application_1/101/indicator_learn.dart';
import 'package:flutter_application_1/101/list_tile_learn.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/page_view_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/stack_learn.dart';
import 'package:flutter_application_1/101/stateful_learn.dart';
import 'package:flutter_application_1/101/statefull_life_cycle.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_field_learn.dart';
import 'package:flutter_application_1/101/text_widget_learn.dart';
import 'package:flutter_application_1/demos/color_demos_view.dart';
import 'package:flutter_application_1/demos/color_lifeCycle_view.dart';
import 'package:flutter_application_1/demos/note_demos_view.dart';
import 'package:flutter_application_1/demos/stack_demo_view.dart';


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
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
      ),
      home: ColorLifeCycle(),
    );
  }
}
