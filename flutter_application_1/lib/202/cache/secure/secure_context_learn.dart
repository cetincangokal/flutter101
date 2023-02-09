import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class secureContextLearn extends StatefulWidget {
  const secureContextLearn({super.key});

  @override
  State<secureContextLearn> createState() => _secureContextLearnState();
}

enum _secureKeys { token }

class _secureContextLearnState extends State<secureContextLearn> {
  final _storage = const FlutterSecureStorage();
  String _title = '';
  TextEditingController _controller = TextEditingController();
  void saveItems(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async {
    _title = await _storage.read(key: _secureKeys.token.name) ?? '';
    if(_title.isNotEmpty){
        print('bu eleman önceden kullanmış appi ve tokeni bu');
        _controller.text = _title;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        onPressed: () async {
          await _storage.write(key: _secureKeys.token.name, value: _title);
          
        },
        label: Text('save'),
      ),
      body: TextField(
        minLines: 3,
        maxLines: 4,
        controller: _controller,
        onChanged: saveItems,
      ),
    );
  }
}
