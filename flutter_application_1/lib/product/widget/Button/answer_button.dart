import 'dart:math';

import 'package:flutter/material.dart';

class answerButton extends StatefulWidget {
  const answerButton({
    Key? key,
     this.onNumber,
  }) : super(key: key);
  final bool Function(int number)? onNumber;

  @override
  State<answerButton> createState() => _answerButtonState();
}

class _answerButtonState extends State<answerButton> {
  ///bana bir sayi don random bu sayi kontrol edip sana cevap vericem
  ///bu cevaba göre buttonun rengini güncelle
  ///eğer doğru ise yeşil yanlış ise kırmızı
  
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(primary: _backgroundColor),
      child: Text('data'),
      onPressed: () {
        final result = Random().nextInt(10);

        final response = widget.onNumber?.call(result) ?? false;
        setState(() {
          _backgroundColor = response ? Colors.green : Colors.red;
        });
      },
    );
  }
}