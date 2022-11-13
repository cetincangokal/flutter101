import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container( 
              color: Colors.white,
              height: 100,
            ),
          ),
          
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20) + ProjectPadding.pagePaddingVertical,
            child: const Text('ali'),
          ),
          
        ]),
      ),
    );
  }
}
class ProjectPadding {
  static final pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
}
