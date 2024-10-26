import 'package:flutter/material.dart';
import 'package:market_app/future/widget/email_textfield.dart';
import 'package:market_app/future/widget/custom_elevated_button.dart';
import 'package:market_app/future/widget/password_textfield.dart';
import 'package:market_app/product/constants/application_collors.dart';
import 'package:market_app/product/constants/application_padding.dart';
import 'package:market_app/product/constants/application_string.dart';

class KayitEkraniScreen extends StatefulWidget {
  const KayitEkraniScreen({super.key});

  @override
  State<KayitEkraniScreen> createState() => _KayitEkraniScreenState();
}

class _KayitEkraniScreenState extends State<KayitEkraniScreen> {
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
                ApplicationColors.black.withOpacity(0.9), // Alt kısım, opaklık artırıldı
              ],
            ),
          ),
          child: Padding(
            padding: ApplicationPadding.screensColumnPadding,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: titleText(
                        context, ApplicationString.jointtext, ApplicationString.appDescription)),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      const CustomTextEmailField(),
                      const TextFieldPassword(),
                      const AppCustomElevatedButton(
                        text: 'Sign Up',
                      ),
                      loginOptionsButtons(),
                      bottomTexts(context),
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
          ApplicationString.signUpBottonText1,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            ApplicationString.signUpBottonText2,
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

  RichText bottomText(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: ApplicationString.signUpBottonText1,
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

  Padding loginOptionsButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          loginOptionsIconButton(
            () {
              debugPrint('Facebook');
            },
            Icons.facebook,
            ApplicationColors.blue,
          ),
          loginOptionsIconButton(
            () {
              debugPrint('apple');
            },
            Icons.apple,
            ApplicationColors.black,
          ),
          loginOptionsIconButton(
            () {
              debugPrint('improvement');
            },
            Icons.self_improvement,
            ApplicationColors.red,
          ),
          loginOptionsIconButton(
            () {
              debugPrint('discord');
            },
            Icons.discord,
            ApplicationColors.gray,
          ),
        ],
      ),
    );
  }

  IconButton loginOptionsIconButton(Function()? onPressed, icon, Color color) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(ApplicationColors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 40,
        color: color,
      ),
    );
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
}
