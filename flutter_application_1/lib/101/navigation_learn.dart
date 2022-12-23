import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/%C4%B1mage_learn.dart';
import 'package:flutter_application_1/101/navigate_detail_learn.dart';

class navigationLearn extends StatefulWidget {
  const navigationLearn({super.key});

  @override
  State<navigationLearn> createState() => _navigationLearnState();
}

class _navigationLearnState extends State<navigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetAdvance<bool>(
                  context, navigateDetailLearn(
                    isOkey: selectedItems.contains(index),
                  ));
              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ));
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () async {
          final response = await navigateToWidgetAdvance<bool>(
              context, navigateDetailLearn());
          if (response == true) {}
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: RouteSettings()),
    );
  }

  Future<T?> navigateToWidgetAdvance<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: RouteSettings()),
    );
  }
}
