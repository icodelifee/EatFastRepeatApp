import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  @override
  // ignore: must_call_super
  void onInit() {}
  @override
  // ignore: must_call_super
  void onReady() {}
  @override
  void onClose() {}
  void increment() => count.value++;
}
