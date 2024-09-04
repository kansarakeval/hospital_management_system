import 'package:flutter/material.dart';
import 'package:hospital_management_system/screen/intro/view/intro_screen.dart';
import 'package:hospital_management_system/screen/splash/view/splash_screen.dart';

Map<String,WidgetBuilder> app_routes={
  '/': (context) => const SplashScreen(),
  'intro': (context) => const IntroScreen(),
};