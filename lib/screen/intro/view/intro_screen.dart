part of '../../file_import.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: [
            PageWidget(
              title: titleHading1,
              body: titleSmall,
              imageUrl: doctorImage1,
            ).getPageModel(context),
            PageWidget(
              title: titleHading2,
              body: titleSmall,
              imageUrl: doctorImage2,
            ).getPageModel(context),
            PageWidget(
              title: titleHading3,
              body: titleSmall,
              imageUrl: doctorImage3,
            ).getPageModel(context),
          ],
          onDone: () {
            ShareHelper shr = ShareHelper();
            shr.setIntroStatus();
            Get.offAllNamed('welcome');
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
      ),
    );
  }
}
