import 'package:flutter/material.dart';
import 'package:hospital_management_system/utils/theme/text_theme.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PageWidget {
  final String title;
  final String body;
  final String imageUrl;
  final Color pageColor;

  PageWidget({
    required this.title,
    required this.body,
    required this.imageUrl,
    this.pageColor = const Color(0xFFF0F5F3),
  });

  PageViewModel getPageModel(BuildContext context) {
    return PageViewModel(
      titleWidget: Text(
        title,
        style: txtBold24,
        textAlign: TextAlign.center,
      ),
      bodyWidget: Text(
        body,
        style: txt16,
        textAlign: TextAlign.center,
      ),
      image: Center(
        child: Image.asset(
          imageUrl,
          height: 300.0,
        ),
      ),
      decoration: PageDecoration(
        pageColor: pageColor,
        imagePadding: const EdgeInsets.only(top: 50.0),
        titlePadding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        bodyPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}
