import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_management_system/utils/helper/share_helper.dart';
import 'package:hospital_management_system/utils/theme/color.dart';
import 'package:hospital_management_system/utils/theme/text.dart';
import 'package:hospital_management_system/utils/widget/pageWidget.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageWidget(
            title: titleHading1,
            body: titleSmall,
            imageUrl: 'assets/image/men1.png',
          ).getPageModel(context),
          PageWidget(
            title: titleHading2,
            body: titleSmall,
            imageUrl: 'assets/image/men2.png',
          ).getPageModel(context),
          PageWidget(
            title: titleHading3,
            body: titleSmall,
            imageUrl: 'assets/image/men3.png',
          ).getPageModel(context),
        ],
        onDone: () {
          ShareHelper shr = ShareHelper();
          shr.setIntroStatus();
          Get.offAllNamed('signIn');
        },
        showSkipButton: true,
        skip: const Text("Skip", style: TextStyle()),
        next: Icon(Icons.arrow_forward, color: bluePrimary),
        done: Text("Done", style: TextStyle(fontWeight: FontWeight.w600, color: bluePrimary)),
        dotsDecorator: DotsDecorator(
          activeColor: bluePrimary,
          size: const Size(10.0, 10.0),
          color: Colors.grey,
          activeSize: const Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
      ),
    );
  }
}
