import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:wias/Core/Providers/BottomNavBarProvider.dart';
import 'package:wias/UI/Screens/SplashScreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => BottomNavProvider()),
    ],
    child: WIAS(),
  ));
}

class WIAS extends StatelessWidget {
  static const double _designWidth = 430;
  static const double _designHeight = 932;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(_designWidth, _designHeight),
      builder: (context, widget) => GetMaterialApp(
        defaultTransition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
