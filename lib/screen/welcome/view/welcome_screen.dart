part of '../../file_import.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: RS.h * 0.03,
                ),
                Text(
                  welcome,
                  style: txtBold24,
                ),
                SizedBox(
                  height: RS.h * 0.05,
                ),
                Image.asset(
                  welcomeImage,
                  height: RS.h * 0.30,
                  fit: BoxFit.cover,
                ),
                const Spacer(),
                CustomElevatedButton(
                  onPressed: () {
                    Get.toNamed('signIn');
                  },
                  text: btnSignIn,
                  style: txt20,
                  buttonStyle: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(bluePrimary),
                  ),
                ),SizedBox(
                  height: RS.h * 0.03,
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  text: btnSignUp,
                  style: txtBtn20,
                  buttonStyle: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
