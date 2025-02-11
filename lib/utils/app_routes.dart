import 'package:flutter/material.dart';
import 'package:hospital_management_system/screen/file_import.dart';
import 'package:hospital_management_system/screen/home/view/home_screen.dart';


Map<String,WidgetBuilder> app_routes={
  '/': (context) => const SplashScreen(),
  'intro': (context) => const IntroScreen(),
  'welcome': (context) => const WelcomeScreen(),
  'signIn': (context) => const SignInScreen(),
  'signUp': (context) => const SignUpScreen(),
  'verify': (context) =>const VerifyScreen(),
  'dash': (context) => const DashScreen(),
  'home': (context) => const HomeScreen(),
  'profile': (context) => const ProfileScreen(),
};