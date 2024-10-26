
import 'dart:async';

import 'package:flutter/material.dart';
import 'signup_page.dart';

import '../../product/constant/strings.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // 2 saniye sonra yönlendirme
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1), // Animasyon süresi
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SignPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin =
                Offset(1.0, 0.0); // Sağdan sola kaydırma için başlangıç konumu
            const end = Offset.zero; // Nihai konum
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        ),
      );
    });
  }

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 250),
                      child: Image.asset("assets/asseee.png"),
                    ),
                    const SizedBox(height: 200),
                    const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
