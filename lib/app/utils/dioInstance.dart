import 'package:dio/dio.dart';

Dio get dioInstance {
  final Dio dio = new Dio();
  dio.options.baseUrl = "http://34.69.125.21:3030/";
  return dio;
}
