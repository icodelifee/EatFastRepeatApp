import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffFFBA92), Color(0xffFF7271)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _titleWidget(),
            _signInBtn(),
          ],
        ),
      ),
    );
  }

  Align _titleWidget() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: RichText(
          text: TextSpan(
              style: GoogleFonts.poppins(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w700,
                  foreground: Paint()..shader = linearGradient,
                  height: 1),
              children: [
                TextSpan(text: "Eat\n"),
                TextSpan(text: "Fast\n"),
                TextSpan(text: "Repeat\n"),
              ]),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Center _signInBtn() {
    return Center(
      child: SizedBox(
          height: 50,
          width: Get.width / 1.4,
          child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Get.theme.buttonColor,
              onPressed: () {},
              child: Text(
                "Sign In with Google",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))),
    );
  }
}
