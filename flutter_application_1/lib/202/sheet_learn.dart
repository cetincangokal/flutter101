import 'dart:developer';

import 'package:flutter/material.dart';

class sheetLearn extends StatefulWidget {
  const sheetLearn({super.key});

  @override
  State<sheetLearn> createState() => _sheetLearnState();
}

class _sheetLearnState extends State<sheetLearn> {
  Color _backGroundColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 48, 82),
      ),
      backgroundColor: _backGroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              builder: (context) {
                return _SheetExample(backGroundColor: _backGroundColor);
              });
              //inspect(result); debug mod kullanmadan gelen değeri görmek!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
          if (result is bool) {
            setState(() {
              _backGroundColor = Colors.cyan;
            });
          }
        },
        child: Icon(Icons.share),
      ),
    );
  }
}

class _SheetExample extends StatefulWidget {
  const _SheetExample({
    Key? key,
    required Color backGroundColor,
  }) : super(key: key);
  @override
  State<_SheetExample> createState() => _SheetExampleState();
}

class _SheetExampleState extends State<_SheetExample> {
  Color _backgroundColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('data22'),
            Image.network(
              'https://picsum.photos/200',
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _backgroundColor = Colors.amber;
                  });
                  Navigator.of(context).pop<bool>(true);
                },
                child: Text('OK')),
          ],
        ),
      ),
    );
  }
}
