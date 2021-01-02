import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewLogger {
  log(String error) {
    Get.snackbar("", error,
        barBlur: 0,
        snackStyle: SnackStyle.FLOATING,
        snackPosition: SnackPosition.BOTTOM,
        instantInit: true,
        backgroundColor: Color(0xFF2E2E2E),
        colorText: Colors.white);
  }
}
