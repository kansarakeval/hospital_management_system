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
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      signInImage,
                      height: RS.h*0.35,
                    ),
                    SizedBox(height: RS.h*0.03),
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
                    SizedBox(height: RS.h*0.01),
                    Align(
                      alignment: Alignment.centerRight,
                        child: InkWell(
                            onTap: () {
                              Get.toNamed('forget');
                            },
                            child: Text(forgetPassword,style: txtColor15,)),),
                    SizedBox(height: RS.h*0.03),
                    CustomElevatedButton(
                      onPressed: () {
                        Get.toNamed('verify');
                      },
                      text: btnSignIn,
                      style: txt20,
                      buttonStyle: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(bluePrimary),
                      ),
                    ),
                    SizedBox(height: RS.h*0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(account, style: Theme.of(context).textTheme.titleSmall),
                        InkWell(
                          onTap: () {
                            Get.toNamed('signUp');
                          },
                            child: Text(signUp, style: txtColor15)),
                      ],
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