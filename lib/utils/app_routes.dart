import 'package:flutter/material.dart';
import 'package:hospital_management_system/screen/doctor/view/doctor_details_screen.dart';
import 'package:hospital_management_system/screen/file_import.dart';


Map<String,WidgetBuilder> app_routes={
  '/': (context) => const SplashScreen(),
  'intro': (context) => const IntroScreen(),
  'welcome': (context) => const WelcomeScreen(),
  'signIn': (context) => const SignInScreen(),
  'signUp': (context) => const SignUpScreen(),
  'forget': (context) => const ForgetPassword(),
  'verify': (context) => const VerifyScreen(),
  'dash': (context)=> const DashScreen(),
  'booking':(context)=> const BookingScreen(),
  'profile': (context) => const ProfileScreen(),
  'doctorDetails': (context) => const DoctorDetailsScreen(),

};