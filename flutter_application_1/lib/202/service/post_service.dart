import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/202/service/post_model.dart';
import 'comment_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(Postmodel postmodel);
  Future<bool> putItemToService(Postmodel postmodel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<Postmodel>?> FetchPostItemsAdvance();
  Future<List<SpesifikPost>?> fetchRelatedCommentWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _networkManager;
  PostService()
      : _networkManager =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(Postmodel postmodel) async {
    try {
      final response = await _networkManager.post(_PostServicePaths.posts.name,
          data: postmodel);

      return response.statusCode == HttpStatus.created;
    } on DioError catch (error) {
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<bool> putItemToService(Postmodel postmodel, int id) async {
    try {
      final response = await _networkManager
          .put('${_PostServicePaths.posts.name}/$id', data: postmodel);
      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response =
          await _networkManager.put('${_PostServicePaths.posts.name}/$id');

      return response.statusCode == HttpStatus.ok;
    } on DioError catch (error) {
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  @override
  Future<List<Postmodel>?> FetchPostItemsAdvance() async {
    try {
      final response = await _networkManager.get(_PostServicePaths.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => Postmodel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;
  }

  @override
  Future<List<SpesifikPost>?> fetchRelatedCommentWithPostId(int postId) async {
    try {
      final response = await _networkManager.get(
          _PostServicePaths.comments.name,
          queryParameters: {_PostQueryPaths.postId.name: postId});

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => SpesifikPost.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }

enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('-----');
    }
  }
}
