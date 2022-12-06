import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/language/language_item.dart';

import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countvalue = 0;
  int _counterCustom = 0;

  void _updateValue(bool isPlus) {
    if (isPlus) {
      _countvalue += 1;
    } else {
      _countvalue -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItem.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          
          _plusNumber(),
          _minusNumber(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
                  style: Theme.of(context).textTheme.headline2,
                  _countvalue.toString())),
                  const Placeholder(),
                  const counterHelloButton(),
                  
        ],
      ),
    );
  }

  FloatingActionButton _plusNumber() {
    return FloatingActionButton(
      onPressed: () {
        _updateValue(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _minusNumber() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateValue(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
