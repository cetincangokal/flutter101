
import 'package:flutter/cupertino.dart';

import '../model/resources_model.dart';
import '../service/reqres_service.dart';

class ReqResProvider extends ChangeNotifier{
  late final IReqresService reqresService;
  List<Data> resources = [];
  bool isLoading = false;

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
  ReqResProvider(this.reqresService){
    _fetch();
  }
  

  Future<void> _fetch() async {
    _changeLoading();
    resources = (await reqresService.fetchResourcesItem())?.data ?? [];
    _changeLoading();
  }
}