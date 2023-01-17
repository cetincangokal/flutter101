import 'package:flutter/material.dart';

class animatedLearn extends StatefulWidget {
  const animatedLearn({super.key});

  @override
  State<animatedLearn> createState() => _animatedLearnState();
}

class _animatedLearnState extends State<animatedLearn> {
//Text('data', style: context.textTheme().headline1)
  bool _isVisible = false;
  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: _placeHolderWidget(),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
          },
        ),
        body: _placeHolderWidget());
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        duration: _durationItems.durationLow,
        crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _durationItems {
  static const durationLow = Duration(seconds: 1);
  static const durationHigh = Duration(seconds: 5);
}
