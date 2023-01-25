import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/oop_learn.dart';

class oopLearnView extends StatefulWidget {
  const oopLearnView({super.key});

  @override
  State<oopLearnView> createState() => _oopLearnViewState();
}

class _oopLearnViewState extends State<oopLearnView> {
  FileDownload? download;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CircularProgressIndicator()],),
      floatingActionButton: FloatingActionButton(onPressed: (() {
        download?.downloadItem(null);
      })),
    );
  }
}
