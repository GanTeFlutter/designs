import 'package:flutter/material.dart';
import 'package:market_app/future/login/kayit_screen.dart';
import 'package:market_app/future/widget/email_textfield.dart';
import 'package:market_app/future/widget/custom_elevated_button.dart';
import 'package:market_app/future/widget/password_textfield.dart';
import 'package:market_app/product/constants/application_collors.dart';
import 'package:market_app/product/constants/application_padding.dart';
import 'package:market_app/product/constants/application_string.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/defaul_scafold_backround_image.png'), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ApplicationColors.appButton.withOpacity(0.2), // Üst kısım
                Colors.black // Alt kısım, opaklık artırıldı
              ],
            ),
          ),
          child: Padding(
            padding: ApplicationPadding.screensColumnPadding,
            child: Column(
              children: [
                Expanded(
                    flex: 6,
                    child: titleText(
                        context, ApplicationString.jointtext, ApplicationString.appDescription)),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const CustomTextEmailField(),
                      const TextFieldPassword(),
                      sifreYenileme(context),
                      const SizedBox(height: 15),
                      const AppCustomElevatedButton(
                        text: 'Login',
                      ),
                      bottomTexts(context)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row bottomTexts(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Ortada hizalamak için
      children: [
        Text(
          ApplicationString.loginbottom1,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const KayitEkraniScreen()));
          },
          child: Text(
            ApplicationString.loginbottom2,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: ApplicationColors.appButton,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: ApplicationColors.appButton,
                ),
          ),
        ),
      ],
    );
  }

  TextButton sifreYenileme(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          ApplicationString.forgotPassword,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: ApplicationColors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
        ));
  }

  Column titleText(BuildContext context, String title1, String title2) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 7),
        Text(
          title2,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        )
      ],
    );
  }

  RichText bottomText(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: ApplicationString.loginbottom1,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
        children: <TextSpan>[
          TextSpan(
            text: ApplicationString.signUpBottonText2,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: ApplicationColors.appButton,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}
