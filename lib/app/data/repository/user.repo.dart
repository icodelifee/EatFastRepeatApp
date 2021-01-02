import 'package:eatfastrepeat/app/data/models/user.model.dart';
import 'package:eatfastrepeat/app/data/provider/user.provider.dart';
import 'package:eatfastrepeat/app/data/services/viewlogger.dart';

class UserRepo {
  final UserProvider userProvider = UserProvider();
  final ViewLogger vl = ViewLogger();
  addUser(Map<String, dynamic> data) async {
    final User user = await userProvider.addUser(data);
    if (user == null) {
      vl.log("Some Error Occured");
    }
    return user;
  }
}
