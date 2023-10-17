import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:questionsapp/app/splash/widgets/splash_body_view.dart';
import 'package:questionsapp/config/routes/routes_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _SplashScreenState() {
    Timer(Duration(seconds: 2), () async {
      context.go(AppRoutesName.questionsScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SplsahBodyView(),
    );
  }
}
