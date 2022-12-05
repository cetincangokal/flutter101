import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            elevation: 100,
            color: Colors.white,
            child: SizedBox(height: 100, width: 500),
            shape: StadiumBorder(),
          ),
          Card(
              color: Theme.of(context).colorScheme.error,
              shape: CircleBorder(),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Center(child: Text('Ali')),
              )),
          _customCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
          ),
          Card(
            color: Theme.of(context).errorColor,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Center(child: Text('Ali')),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _customCard extends StatelessWidget {
  _customCard({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
      shape: Theme.of(context).cardTheme.shape,
    );
  }
}

/// borders
/// stadiumborder
/// circleborder
/// roundedRectangleborder
/// 
/// SINAV HAFTAMDAYIM ARA VERDİM :(