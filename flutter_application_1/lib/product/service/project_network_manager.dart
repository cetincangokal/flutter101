
import 'package:dio/dio.dart';

class ProjetcDioMixin {
  final service = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));

}