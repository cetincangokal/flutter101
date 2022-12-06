import 'package:flutter/material.dart';

class customWidget extends StatelessWidget with _ColorsUtility {
  customWidget({super.key});
  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: CustomButton(title: title),),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Color.fromARGB(255, 231, 210, 210);
  final Color buttonBackground = Color.fromARGB(255, 219, 70, 59);
}

class CustomButton extends StatelessWidget with _ColorsUtility {
  CustomButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: buttonBackground, shape: StadiumBorder()),
        onPressed: () {},
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: redColor, fontWeight: FontWeight.bold),
        ));
  }
}
