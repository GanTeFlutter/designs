
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import '../widget/custom_signup_button.dart';
import '../widget/rich_text.dart';
import '../widget/social_media_links.dart';
import '../widget/textfield_name_email.dart';
import '../widget/textfield_password.dart';
import '../../product/constant/colors.dart';
import '../../product/constant/strings.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              ApplicationString.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.8),
                ],
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sizedBox(89),
                    signUpText(context),
                    //
                    sizedBox(25),
                    textfieldheader(ApplicationString.userName),
                    sizedBox(7),
                    NameOrEmail(
                        controller: _nameController,
                        hintText: ApplicationString.userName),
                    //
                    sizedBox(20),
                    textfieldheader(ApplicationString.email),
                    sizedBox(7),
                    NameOrEmail(
                        controller: _emailController,
                        hintText: ApplicationString.emailAddress),
                    //
                    sizedBox(20),
                    textfieldheader(ApplicationString.password),
                    sizedBox(7),
                    PasswordField(
                        controller: _passwordController,
                        hintText: ApplicationString.password),
                    //
                    sizedBox(20),
                    textfieldheader(ApplicationString.confirmPassword),
                    sizedBox(7),
                    PasswordField(
                        controller: _confirmpassword,
                        hintText: ApplicationString.confirmPassword),
                    //
                    sizedBox(40),
                    CustomSignupButton(
                        text: ApplicationString.signUp,
                        fuc: () {
                          if (kDebugMode) {
                            print('Sign Up');
                          }
                        }),
                    //
                    sizedBox(40),
                    dividerOrText(context),
                    //
                    sizedBox(30),
                    Row(
                      children: [
                        SocialMediaLinks(
                          onPressed: () {},
                          icon: Icons.facebook,
                          backgroundColor: Colors.blue,
                        ),
                        SocialMediaLinks(
                          icon: Icons.apple_outlined,
                          backgroundColor: const Color(0xffFFBC05),
                          onPressed: () {},
                        ),
                        SocialMediaLinks(
                          icon: Icons.mail_outlined,
                          backgroundColor: Colors.red,
                          onPressed: () {},
                        ),
                        sizedBox(20),
                      ],
                    ),
                    sizedBox(30),
                    const Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomRichText(
                          targetPage: LoginPage(),
                          text1: 'Already have an account! ',
                          text2: 'Login ',
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row dividerOrText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider(color: Colors.grey)), // Sol çizgi
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Or SignUp With',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: ApplicationColor.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  )),
        ),
        const Expanded(child: Divider(color: Colors.grey)), // Sağ çizgi
      ],
    );
  }

  Align signUpText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        ApplicationString.signUp,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: ApplicationColor.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }

  SizedBox sizedBox(double h) => SizedBox(height: h);

  Text textfieldheader(String text) => Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ApplicationColor.white,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
      );
}
