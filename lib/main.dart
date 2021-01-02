import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    MaterialApp(),
  );
}

class MaterialApp extends StatelessWidget {
  const MaterialApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          backgroundColor: Colors.black,
          primaryColor: Color(0xFFFFBB92),
          buttonColor: Color(0xFF2E2E2E),
          accentColor: Color(0xFFFFBB92)),
      title: "Eat Fast Repeat",
      initialRoute: AppPages.LOGIN,
      getPages: AppPages.routes,
      defaultTransition: Transition.cupertino,
    );
  }
}
