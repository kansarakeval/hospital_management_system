part of '../../../file_import.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    signUpImage,
                    height: RS.h*0.35,
                  ),
                  SizedBox(height: RS.h*0.03),
                  Text(verification, style: txtBold24),
                  SizedBox(height: RS.h*0.03),
                  // OTP Text Field
                  OtpTextField(
                    numberOfFields: 6,
                    borderColor: bluePrimary,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                    },
                    onSubmit: (String verificationCode) {
                      // Handle the submitted code
                    },
                  ),
                  SizedBox(height: RS.h*0.03),
                  CustomElevatedButton(
                    onPressed: () {
                      Get.offAllNamed('dash');
                    },
                    text: btnVerify,
                    style: txt20,
                    buttonStyle: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(bluePrimary),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
