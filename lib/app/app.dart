import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:questionsapp/config/routes/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (_,child)=>MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),

    );
  }
}
