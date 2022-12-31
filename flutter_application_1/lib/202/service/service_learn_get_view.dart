import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/comment_learn_view.dart';
import 'package:flutter_application_1/202/service/post_model.dart';
import 'package:flutter_application_1/202/service/post_service.dart';



class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<Postmodel>? _items;
  String? name;
  bool _isLoading = false;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
// Test edilebilir kod başladı
  late final IPostService _postService;
  late final Dio _networkManager;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    _postService = PostService();
    name = 'Cetin';
    FetchPostItems();
  }
  void _ChangeLoadingProgress() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }
  //-------------------------------------------------------------------------------------------------------------------------------

  Future<void> FetchPostItems() async {
    _ChangeLoadingProgress();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => Postmodel.fromJson(e)).toList();
        });
      }
    }
    
  }
//---------------------------------------------------------------------------------------------------------


  Future<void> FetchPostItemsAdvance() async {
    _ChangeLoadingProgress();
    final response = await _postService.FetchPostItemsAdvance();
    _ChangeLoadingProgress();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return _CardWidget(model: _items?[index]);
          }),
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required Postmodel? model,
  }) : _model = model, super(key: key);

  final Postmodel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommentLearnView(postId: _model?.id),));
        }),
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
