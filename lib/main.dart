

import 'package:flutter/material.dart';

import 'package:gadget_store/cart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gadget_store/items_model.dart';
import 'package:gadget_store/preload/splash_screen.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
      ChangeNotifierProvider(create: (context) => ItemsModel(
        name: "",
        image: "",
        price: "",
        description: "",),
      child: const MyApp(),),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {

    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'store',
    theme: ThemeData(
    primarySwatch:Colors.purple,
    ),
    home: SplashScreen(),
    );

  }
    );
  }
}

