import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorsItem.Norway,
      ),
      body: Container(
        
        

        color: ColorsItem.Tan,
        child: const Text('data'),
      ),
    );
  }
}

class ColorsItem {
  static const Color Tan = const Color(0xffCFB181);
  static const Color Norway = const Color(0xffA0C39D);
}
