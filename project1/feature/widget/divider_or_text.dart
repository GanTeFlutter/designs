import 'package:flutter/material.dart';
import '../../product/constant/colors.dart';

class DividerOrText extends StatelessWidget {
  final String text;
  const DividerOrText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: Divider(color: Colors.grey)), // Sol çizgi
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(text,
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
}
