import 'dart:js';

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
import 'package:flutter_application_1/101/list_view_builder_learn.dart';
import 'package:flutter_application_1/101/list_view_learn.dart';
import 'package:flutter_application_1/101/padding_learn.dart';
import 'package:flutter_application_1/101/page_view_learn.dart';
import 'package:flutter_application_1/101/scaffold_learn.dart';
import 'package:flutter_application_1/101/stack_learn.dart';
import 'package:flutter_application_1/101/stateful_learn.dart';
import 'package:flutter_application_1/101/statefull_life_cycle.dart';
import 'package:flutter_application_1/101/stateless_learn.dart';
import 'package:flutter_application_1/101/text_field_learn.dart';
import 'package:flutter_application_1/101/text_widget_learn.dart';
import 'package:flutter_application_1/202/%C4%B1mage_learn_202.dart';
import 'package:flutter_application_1/202/alert_learn.dart';
import 'package:flutter_application_1/202/animated_learn.dart';
import 'package:flutter_application_1/202/cache/secure/secure_context_learn.dart';
import 'package:flutter_application_1/202/cache/shared_learn_cache.dart';
import 'package:flutter_application_1/202/cache/shared_list_cache.dart';
import 'package:flutter_application_1/202/form_learn_view.dart';
import 'package:flutter_application_1/202/model_learn.dart';
import 'package:flutter_application_1/202/model_learn_view.dart';
import 'package:flutter_application_1/202/oop_learn_view.dart';
import 'package:flutter_application_1/202/package/package_learn_view.dart';
import 'package:flutter_application_1/202/service/comment_learn_view.dart';
import 'package:flutter_application_1/202/service/service_learn_get_view.dart';
import 'package:flutter_application_1/202/service/service_post_learn_view.dart';
import 'package:flutter_application_1/202/sheet_learn.dart';
import 'package:flutter_application_1/202/tab_learn.dart';
import 'package:flutter_application_1/202/theme/light_theme.dart';
import 'package:flutter_application_1/202/theme/theme_learn_view.dart';
import 'package:flutter_application_1/202/widget_size_learn_view.dart';
import 'package:flutter_application_1/303/call_back_learn.dart';
import 'package:flutter_application_1/303/generic_learn.dart';
import 'package:flutter_application_1/303/part/part_of_learn.dart';
import 'package:flutter_application_1/303/reqrest_resources/view/reqres_view.dart';
import 'package:flutter_application_1/303/tabbar_advance.dart';
import 'package:flutter_application_1/demos/color_demos_view.dart';
import 'package:flutter_application_1/demos/color_lifeCycle_view.dart';
import 'package:flutter_application_1/demos/my_collections_demos.dart';
import 'package:flutter_application_1/demos/my_demo_loginPage.dart';
import 'package:flutter_application_1/demos/note_demos_view.dart';
import 'package:flutter_application_1/demos/stack_demo_view.dart';
import 'package:flutter_application_1/product/global/resource_context.dart';
import 'package:flutter_application_1/product/global/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [Provider(create: ((_) => ResourceContext())),
  ChangeNotifierProvider<ThemeNotifier>(create: ((context) => ThemeNotifier()))],
  builder: (context, child) => MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifier>().currentTheme
      .copyWith(
        iconTheme: IconThemeData(
          color: Colors.blueGrey,
          size: 50,
        ),
        tabBarTheme: TabBarTheme(

            ///indicator:
            ///labelColor:
            ///cart curt
            ///buraya yazmak daha temiz
            ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
      ),
      home: reqresView(),
    );
  }
}



