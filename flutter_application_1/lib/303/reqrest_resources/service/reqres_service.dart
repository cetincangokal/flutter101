import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/303/reqrest_resources/model/resources_model.dart';

abstract class IReqresService {
  IReqresService(this.dio);
  final Dio dio;

  Future<resourcesModel?> fetchResourcesItem();
}

enum _ReqResPath { resource }

class ReqresService extends IReqresService {
  ReqresService(super.dio);

  @override
  Future<resourcesModel?> fetchResourcesItem() async {
    final response = await dio.get('/${_ReqResPath.resource.name}');
    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return resourcesModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
