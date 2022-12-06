import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/language/language_item.dart';

class counterHelloButton extends StatefulWidget {
  const counterHelloButton({super.key});

  @override
  State<counterHelloButton> createState() => _counterHelloButtonState();
}

class _counterHelloButtonState extends State<counterHelloButton> {
  int _counterCustom = 0;
  final String _welcomeTitle = LanguageItem.welcomeTitle;
  void _updateCounter(){
    setState(() {
                      ++_counterCustom;
                    });
  }
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCounter, child: Text('$_welcomeTitle $_counterCustom')
                    
                  );
  }
}