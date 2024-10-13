part of '../../../file_import.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConformPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formKey,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      signUpImage,
                      height: RS.h*0.35,
                    ),
                    SizedBox(height: RS.h*0.03),
                    Text(signUp, style: txtBold24),
                    SizedBox(height: RS.h*0.03),
                    CustomTextFormField(
                      controller: txtEmail,
                      hintText: email,
                      prefixIcon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return vEmail;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: RS.h*0.02),
                    CustomTextFormField(
                      controller: txtPhone,
                      hintText: phone,
                      prefixIcon: Icons.phone,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return vPhone;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: RS.h*0.02),
                    CustomTextFormField(
                      controller: txtPassword,
                      hintText: password,
                      prefixIcon: Icons.lock_outline,
                      isPasswordField: true, // Enabling password visibility toggle
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return vPassword;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: RS.h*0.02),
                    CustomTextFormField(
                      controller: txtConformPassword,
                      hintText: conformPassword,
                      prefixIcon: Icons.lock_outline,
                      isPasswordField: true, // Enabling password visibility toggle
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return vPassword;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: RS.h*0.03),
                    CustomElevatedButton(
                      onPressed: () {
                        Get.offAllNamed('signIn');
                      },
                      text: btnSignUp,
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
      ),
    );
  }
}
