import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_management_system/screen/details/view/details_screen.dart';
import 'package:hospital_management_system/utils/app_routes.dart';
import 'package:hospital_management_system/utils/theme/size.dart';

void main(){
  runApp(
    const MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    RS.initSize(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => DetailsScreen(),),
    );
  }
}
