import 'package:dio/dio.dart';
import 'package:eatfastrepeat/app/data/models/user.model.dart';
import 'package:eatfastrepeat/app/data/services/dioInstance.dart';
import 'package:logger/logger.dart';

class UserProvider {
  final _dio = dioInstance;
  final log = Logger(printer: PrettyPrinter());
  Future<User> addUser(Map<String, dynamic> data) async {
    User user;
    try {
      Response res = await _dio.post('users', data: data);
      if (res.statusCode == 200)
        user = User.fromJson(res.data);
      else
        log.d(res.data);
    } catch (e) {
      log.d(e);
    }
    return user;
  }
}
