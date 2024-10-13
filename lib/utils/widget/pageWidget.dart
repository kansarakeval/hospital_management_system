import 'package:flutter/material.dart';
import 'package:hospital_management_system/utils/theme/color.dart';
import 'package:hospital_management_system/utils/theme/text_theme.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PageWidget {
  final String title;
  final String body;
  final String imageUrl;

  PageWidget({
    required this.title,
    required this.body,
    required this.imageUrl,
  });

  PageViewModel getPageModel(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return PageViewModel(
      titleWidget: Text(
        title,
        style: txtBold24,
        textAlign: TextAlign.center,
      ),
      bodyWidget: Text(
        body,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
      image: Center(
        child: Image.asset(
          imageUrl,
          height: 300.0,
        ),
      ),
      decoration: PageDecoration(
        pageColor: isDarkMode ? Colors.black87 : Colors.white,  // Ternary to decide page color
        imagePadding: const EdgeInsets.only(top: 50.0),
        titlePadding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        bodyPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      ),
    );
  }
}
