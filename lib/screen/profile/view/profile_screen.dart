part of '../../file_import.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              title: Text("theme"),
              leading: Icon(Icons.dark_mode_outlined),
              trailing: Obx(
                    () => Switch(
                  value: controller.islight.value,
                  onChanged: (value) {
                    ShareHelper shr = ShareHelper();
                    shr.setTheme(value);
                    controller.changeTheme();
                  },
                ),
              ),
            ),
            ListTileWidget(
              title: Text("Abu"),
              leading: Icon(Icons.dark_mode_outlined),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
            ListTileWidget(
              title: Text("Log Out"),
              leading: Icon(Icons.login_outlined),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}