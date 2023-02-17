import 'package:flutter/material.dart';
import 'package:flutter_application_1/product/widget/Button/answer_button.dart';
import 'package:flutter_application_1/product/widget/Button/loading_button.dart';
import 'package:flutter_application_1/product/widget/callback_dropdown.dart';

class callBackLearn extends StatefulWidget {
  const callBackLearn({super.key});

  @override
  State<callBackLearn> createState() => _callBackLearnState();
}

class _callBackLearnState extends State<callBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            callbackDropdown(onUserSelected: (CallBackUser user) {
              print(user);
            }),

            answerButton(onNumber: (number) {
              return number % 3 == 1;
            },),
            loadingButton(title: 'save', onPressed: () async {
              await Future.delayed(Duration(seconds: 1));
            })
          ],
        ));
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  // TODO: dummy Remove it
  static List<CallBackUser> dummyUsers() {
    return [
      CallBackUser('Cetin', 123),
      CallBackUser('Eren', 124),
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallBackUser && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
