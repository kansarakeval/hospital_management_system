import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_management_system/screen/file_import.dart';
import 'package:hospital_management_system/utils/app_routes.dart';
import 'package:hospital_management_system/utils/theme/app_theme.dart';
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
    ProfileController controller = Get.put(ProfileController());
    controller.changeTheme();
    return Obx(
      () =>  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: controller.islight.value?lightTheme:darkTheme,
        routes: app_routes,
      ),
    );
  }
}
