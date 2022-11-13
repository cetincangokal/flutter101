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
            child: SizedBox(height: 100, width: 500),
            shape: StadiumBorder(),
            ),
          Card(
            color: Theme.of(context).colorScheme.error,
            shape: CircleBorder(),
            child: SizedBox(height: 100, width: 100)
            ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

/// borders
/// stadiumborder
/// circleborder
/// roundedRectangleborder