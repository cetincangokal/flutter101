import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          titleTextWidget(text: "veli1"),
          titleTextWidget(text: "veli2"),
          titleTextWidget(text: "veli3"),
          titleTextWidget(text: "veli4"),
          titleTextWidget(text: "veli5"),
          _customContainer(),
          _emptyBox()
        ],
      ),
    );
  }
}
SizedBox _emptyBox() => const SizedBox(height: 10,);

class _customContainer extends StatelessWidget {
  const _customContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class titleTextWidget extends StatelessWidget {
  const titleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
      
    );
  }
}
