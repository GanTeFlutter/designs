import 'package:flutter/material.dart';
import 'package:market_app/future/home/home_screen.dart';
import 'package:market_app/product/constants/application_collors.dart';

class AppCustomElevatedButton extends StatefulWidget {
  final String? text;
  const AppCustomElevatedButton({
    super.key,
    this.text,
  });

  @override
  State<AppCustomElevatedButton> createState() => _AppCustomElevatedButtonState();
}

class _AppCustomElevatedButtonState extends State<AppCustomElevatedButton> {


  void goTodo() async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(ApplicationColors.appButtonWidget),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: goTodo, // Bekletme işlemi dahil edildi
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: Center(
          child: Text(
            widget.text ?? 'button',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: ApplicationColors.white,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ),
    );
  }
}
