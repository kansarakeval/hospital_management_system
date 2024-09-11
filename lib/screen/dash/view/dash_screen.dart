part of '../../file_import.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  List<Widget> screen =  [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => PageView(
        controller: controller.pageController.value,
        onPageChanged: (value) {
          controller.screenIndex.value = value;
        },
        children: screen,
      ),
      ),
        backgroundColor: Colors.white,
        color: bluePrimary,
        buttonBackgroundColor: bluePrimary,
        height: 60,
        items: const [
        ],
    );
  }
}
