import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/product/language/language_item.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return AnimatedContainer(
                key: key,
                height: 10,
                width: 10.0 * (currentLength ?? 0),
                color: Colors.green,
                duration: const Duration(seconds: 1),
              );
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            textInputAction: TextInputAction.next,
            focusNode: focusNodeTextFieldOne,
            decoration: _InputDecoration().emailInput
          ),
          TextField(
            decoration: _InputDecoration().emailInput,
            focusNode: focusNodeTextFieldTwo,
          
          ),
        ],
      ),
    );
  }
}



class _InputDecoration {
  final emailInput = InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                labelText: LanguageItem.mailTitle,
                fillColor: Colors.white);
}