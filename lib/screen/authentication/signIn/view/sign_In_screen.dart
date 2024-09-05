part of '../../../file_import.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formKey,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      signInImage,
                      height: RS.h*0.30,
                    ),
                    SizedBox(height: RS.h*0.05),
                     Text(signIn, style: txtBold24),
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
                    SizedBox(height: RS.h*0.03),
                    CustomElevatedButton(
                      onPressed: () {
                      },
                      text: btnSignIn,
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