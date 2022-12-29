import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/card_learn.dart';

import '../product/language/language_item.dart';

///image
///text Mail
///text Password
///remember Me button
///sıgn ın button
///sıgn up button

class myLoginPage extends StatefulWidget {
  const myLoginPage({super.key});

  @override
  State<myLoginPage> createState() => _myLoginPageState();
}

class _myLoginPageState extends State<myLoginPage> {
  final key = GlobalKey();
  bool isChecked = false;
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/png/image_collection.png',
                width: 100,
                height: 200,
              ),
              Text(
                LanguageItem.welcomeTitle,
                style: Theme.of(context).textTheme.headline4,
              ),
              Padding(
                padding: projectUtility().paddingGeneral,
                child: Column(
                  children: [
                    TextField(
                        maxLength: 20,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
                        textInputAction: TextInputAction.next,
                        focusNode: focusNodeTextFieldOne,
                        decoration: _InputDecoration().emailInput),
                    TextField(
                      decoration: _InputDecoration().passwordInput,
                      focusNode: focusNodeTextFieldTwo,
                    ),
                    Padding(
                      padding: projectUtility().paddingCheckBox,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            LanguageItem.rememberMe,
                            style: TextStyle(
                                color: Color.fromARGB(255, 187, 181, 181)),
                          ),
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blueGrey,
                            shape: CircleBorder(),
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = !isChecked;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(LanguageItem.signIn),
                    style: _InputDecoration().buttonDecoration,
                  ),
                  Padding(
                    padding: projectUtility().betweenButtonPadding,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(LanguageItem.signUp),
                      style: _InputDecoration().buttonDecoration,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InputDecoration {
  final emailInput = InputDecoration(
      prefixIcon: Icon(Icons.mail),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      labelText: LanguageItem.mailTitle,
      fillColor: Colors.white);

  final passwordInput = InputDecoration(
      prefixIcon: Icon(Icons.lock),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      labelText: LanguageItem.passwordTitle,
      fillColor: Colors.white);

  final buttonDecoration = ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      shape:
          RoundedRectangleBorder(borderRadius: projectUtility().borderRadius));
}

class projectUtility {
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingCheckBox = const EdgeInsets.only(left: 30);
  final borderRadius = BorderRadius.all(Radius.circular(20));
  final betweenButtonPadding = EdgeInsets.all(8.0);
}
