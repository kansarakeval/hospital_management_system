part of '../../file_import.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final DashController controller = Get.put(DashController());

  List<Widget> screen =  [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const ProfileScreen()
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
      bottomNavigationBar: Obx(() => CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: bluePrimary,
        buttonBackgroundColor: bluePrimary,
        height: 60,
        index: controller.screenIndex.value,
        items: const [
          Icon(LineIcons.home, color: Colors.white),
          Icon(LineIcons.stethoscope, color: Colors.white),
          Icon(LineIcons.doctor, color: Colors.white),
          Icon(LineIcons.user, color: Colors.white),
        ],
        onTap: (index) {
          // controller.screenIndex.value = index;
          // controller.pageController.value.jumpToPage(index);
        },
      )),
    );
  }
}
