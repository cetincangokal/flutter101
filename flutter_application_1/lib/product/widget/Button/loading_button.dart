import 'package:flutter/material.dart';

class loadingButton extends StatefulWidget {
  const loadingButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Future<void> Function() onPressed;

  @override
  State<loadingButton> createState() => _loadingButtonState();
}

class _loadingButtonState extends State<loadingButton> {

  bool _isLoading = false;

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () async {
      if (_isLoading) return;
      _changeLoading();
      await widget.onPressed.call();
      _changeLoading();
    }, child: _isLoading ? CircularProgressIndicator() : Text( widget.title));
  }
}
