import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  String? name;
  bool _isLoading = false;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  late final Dio _networkManager;
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _ChangeLoadingProgress() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(Postmodel postmodel) async {
    _ChangeLoadingProgress();
    final response = await _networkManager.post('posts', data: postmodel);

    if (response.statusCode == HttpStatus.created) {
      name = 'Basarili';
    }
    _ChangeLoadingProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _bodyController,
              decoration: InputDecoration(labelText: 'Body'),
            ),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              autofillHints: [AutofillHints.creditCardNumber],
              decoration: InputDecoration(labelText: 'UserId'),
            ),
            TextButton(onPressed: 
            _isLoading ? null :
            () {
              if (_titleController.text.isNotEmpty && _bodyController.text.isNotEmpty && _userIdController.text.isNotEmpty) {
                final model = Postmodel(body: _bodyController.text, title: _titleController.text, userId: int.tryParse(_userIdController.text));

                _addItemToService(model);
              }
            }, child: Text('Send'))
          ],
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required Postmodel? model,
  })  : _model = model,
        super(key: key);

  final Postmodel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
