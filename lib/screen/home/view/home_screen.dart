import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_management_system/utils/theme/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: bluePrimary,
          onPressed: () {
            Get.toNamed('detail');

          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
