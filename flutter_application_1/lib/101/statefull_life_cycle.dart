import 'package:flutter/material.dart';

class StatefullLifeCycle extends StatefulWidget {
  const StatefullLifeCycle({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycle> createState() => _StatefullLifeCycleState();
}

class _StatefullLifeCycleState extends State<StatefullLifeCycle> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('c');

  }
  @override
  void didUpdateWidget(covariant StatefullLifeCycle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message){
      _message = widget.message;
      _computeName();
      setState(() {
        
      });
    };
  }

  @override 
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('alo');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
    print('a');
  }

  void _computeName() {
    if (widget.message.length.isOdd) {
      _message += 'Cift';
    } else {
      _message += 'Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(widget.message))
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "aa";
                });
              }, child: Text(_message),),
    );
  }
}
