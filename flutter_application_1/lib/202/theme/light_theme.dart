import 'package:flutter/material.dart';

class LigthTheme {
  final _ligthColor = _LigthColor();
  late ThemeData theme;

  LigthTheme() {
    theme = ThemeData(
      appBarTheme: AppBarTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)))
      ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(

            onPrimary: Colors.purple, onSecondary: _ligthColor.blueMenia,
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.green),
          side: BorderSide(color: Colors.green)),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 25, color: _ligthColor._textColor)));
  }
}

class _LigthColor {
  final Color _textColor = Color.fromARGB(255, 70, 17, 14);
    final Color blueMenia = Color.fromARGB(95, 188, 248, 1);

}
