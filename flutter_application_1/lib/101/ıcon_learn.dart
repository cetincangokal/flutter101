import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.message_outlined,
                
              )),
          SizedBox(height: 50,),    
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.message_outlined,
                color: iconColor.froly,
                size: iconSize.iconSmall,
              )),
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.message_outlined,
                color: iconColor.froly,
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}
class IconColors {
  final Color froly = const Color(0xffED617A);
}