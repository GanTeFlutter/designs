import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../product/constant/app_textstyle.dart';
class CustomRichText extends StatelessWidget {
  final String text1;
  final String text2;
  final Widget targetPage;
  const CustomRichText(
      {super.key,
      required this.text1,
      required this.text2,
      required this.targetPage});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: AppTextStyles.textSpan2(context),
          ),
          TextSpan(
            text: text2,
            style: AppTextStyles.textSpan1(context),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        targetPage,
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0,
                          0.0); // Sağdan sola kaydırma için başlangıç konumu
                      const end = Offset.zero; // Nihai konum
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
