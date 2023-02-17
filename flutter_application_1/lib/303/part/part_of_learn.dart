import 'package:flutter/material.dart';
part 'part_appBar.dart';

class partOfLearn extends StatefulWidget {
  const partOfLearn({super.key});

  @override
  State<partOfLearn> createState() => _partOfLearnState();
}

class _partOfLearnState extends State<partOfLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _PartofAppBar(),
      body: Text('data'),
    );
  }
}


