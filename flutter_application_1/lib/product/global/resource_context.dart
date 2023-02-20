import 'package:flutter_application_1/303/reqrest_resources/model/resources_model.dart';

class ResourceContext {
  resourcesModel? model;

  void saveModel(resourcesModel? model) {
    this.model = model;
  }
}