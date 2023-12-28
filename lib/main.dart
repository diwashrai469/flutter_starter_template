import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_starter_template/common/constant/app_dimens.dart';
import 'package:flutter_starter_template/theme/app_theme.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ScreenUtilInit is flutter plugin for adapting screen and font size.Let your UI display a reasonable layout on different screen sizes!
    // OkToast is flutter package for show toast messgae
    return OKToast(
      position: ToastPosition.bottom,
      child: ScreenUtilInit(
        designSize: const Size(AppDimens.appWidth, AppDimens.appHeight),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => MaterialApp(
          theme: AppThemes.light,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
