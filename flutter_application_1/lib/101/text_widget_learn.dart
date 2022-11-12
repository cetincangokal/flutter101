import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = 'veli';

  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hojgeldin $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.welcomeStyles),
          Text(
            'Hello $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColor.welcomeColor),
          ),
          Text(name ?? ' '),
          Text(keys.welcome),
          Text(
            'merhaba hoşgeldiniz sayın $name',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyles,
          ),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyles = TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    letterSpacing: 2,
    color: Colors.lime,
    fontStyle: FontStyle.italic,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColor {
  static Color welcomeColor = Colors.green;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
