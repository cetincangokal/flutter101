import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/cache/shared_learn_cache.dart';
import 'package:flutter_application_1/303/reqrest_resources/model/resources_model.dart';
import 'package:flutter_application_1/303/reqrest_resources/service/reqres_service.dart';
import 'package:flutter_application_1/product/service/project_network_manager.dart';

import '../view/reqres_view.dart';

abstract class ReqresViewModel extends LoadingStatefull<reqresView>
    with ProjetcDioMixin {
  late final IReqresService reqresService;
  List<Data> resources = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reqresService = ReqresService(service);
    _fetch();
  }

  Future<void> _fetch() async {
    changeLoading();
    resources = (await reqresService.fetchResourcesItem())?.data ?? [];
    changeLoading();
  }
}
