import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_management_system/utils/app_routes.dart';

void main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    )
  );
}