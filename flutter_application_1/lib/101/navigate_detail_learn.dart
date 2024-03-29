import 'package:flutter/material.dart';

class navigateDetailLearn extends StatefulWidget {
  const navigateDetailLearn({
    Key? key,
    this.isOkey = false,
  }) : super(key: key);
  final bool isOkey;

  @override
  State<navigateDetailLearn> createState() => _navigateDetailLearnState();
}

class _navigateDetailLearnState extends State<navigateDetailLearn> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(
              Icons.check,
              color: widget.isOkey ? Colors.red : Colors.green,
            ),
            label: widget.isOkey ? Text('red') : Text('onayla')),
      ),
    );
  }
}
