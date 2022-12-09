import 'package:flutter/material.dart';

class colorDemosView extends StatefulWidget {
  const colorDemosView({super.key, required this.initialColor});
  final Color? initialColor;
  
  @override
  State<colorDemosView> createState() => _colorDemosViewState();
}

class _colorDemosViewState extends State<colorDemosView> {
  Color? _backgroundColor;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant colorDemosView oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTap,
        items: [
        BottomNavigationBarItem(
            icon: _containerDecoration(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _containerDecoration(
              color: Colors.yellow,
            ),
            label: 'Yellow'),
        BottomNavigationBarItem(
            icon: _containerDecoration(
              color: Colors.blue,
            ),
            label: 'Blue'),
      ]),
    );
  }

  void _colorOnTap(int value) {
        if (value == _MyColors.red.index) {
          changeBackgroundColor(Colors.red);
        }else if (value == _MyColors.yellow.index){
          changeBackgroundColor(Colors.yellow);
        }else if(value == _MyColors.blue.index){
          changeBackgroundColor(Colors.blue);
        }
      }
}

enum _MyColors { red, yellow, blue }

class _containerDecoration extends StatelessWidget {
  const _containerDecoration({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
