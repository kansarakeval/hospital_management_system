import 'package:flutter/material.dart';
import 'package:hospital_management_system/utils/theme/app_images.dart';
import 'package:hospital_management_system/utils/theme/size.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Image.asset(
                signInImage,
                height: RS.h * 0.30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
