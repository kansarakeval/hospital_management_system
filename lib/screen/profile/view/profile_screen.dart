part of '../../file_import.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTileWidget(
              title: Text("theme"),
              leading: Icon(Icons.dark_mode_outlined),
              trailing: Icon(Icons.navigate_next),
              onTap: () {},
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
