import 'package:flutter/material.dart';
import 'signup_page.dart';
import '../widget/custom_signup_button.dart';
import '../widget/divider_or_text.dart';
import '../widget/social_media_links.dart';
import '../widget/textfield_name_email.dart';
import '../widget/textfield_password.dart';
import '../../product/constant/strings.dart';

import '../../product/constant/colors.dart';
import '../widget/rich_text.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isSwitched = false;
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
                    sizedBox(150),
                    signUpText(context),
                    sizedBox(70),
                    textfieldheader(ApplicationString.email),
                    sizedBox(7),
                    NameOrEmail(
                        controller: _emailController,
                        hintText: ApplicationString.emailAddress),
                    sizedBox(20),
                    textfieldheader(ApplicationString.password),
                    sizedBox(7),
                    PasswordField(
                        controller: _passwordController,
                        hintText: ApplicationString.password),
                    sizedBox(7),
                    Row(children: [
                      Switch(
                          activeTrackColor: ApplicationColor.orange,
                          activeColor: ApplicationColor.black,
                          value: _isSwitched,
                          onChanged: (value) {
                            setState(() {
                              _isSwitched = value;
                            });
                          }),
                      sizedBoxW(7),
                      Text(ApplicationString.remember,
                          style: _isSwitched
                              ? Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: ApplicationColor.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  )
                              : Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: ApplicationColor.grey,
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w500,
                                  )),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            ApplicationString.forgotPassword,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: ApplicationColor.grey,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ))
                    ]),
                    sizedBox(20),
                    CustomSignupButton(
                      fuc: () {},
                      text: ApplicationString.signIn,
                    ),
                    sizedBox(40),
                    const DividerOrText(text: ApplicationString.orloginwith),
                    sizedBox(30),
                    Row(
                      children: [
                        SocialMediaLinks(
                            onPressed: () {},
                            icon: Icons.facebook,
                            backgroundColor: ApplicationColor.blue),
                        SocialMediaLinks(
                          onPressed: () {},
                          icon: Icons.apple_outlined,
                          backgroundColor: ApplicationColor.orange,
                        ),
                        SocialMediaLinks(
                          onPressed: () {},
                          icon: Icons.mail_outlined,
                          backgroundColor: ApplicationColor.red,
                        ),
                        sizedBox(20),
                      ],
                    ),
                    sizedBox(120),
                    const Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomRichText(
                            targetPage: SignPage(),
                            text1: ApplicationString.donthaveanaccount,
                            text2: ApplicationString.signIn)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox sizedBox(double h) => SizedBox(height: h);
  SizedBox sizedBoxW(double w) => SizedBox(width: w);

  Text textfieldheader(String text) => Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ApplicationColor.white,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
      );
  Align signUpText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        ApplicationString.login,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: ApplicationColor.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
