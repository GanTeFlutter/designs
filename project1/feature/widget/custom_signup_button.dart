import 'package:flutter/material.dart';
import '../../product/constant/colors.dart';

class CustomSignupButton extends StatefulWidget {
  final void Function()? fuc;
  final String text;

  const CustomSignupButton({super.key, this.fuc, required this.text});

  @override
  State<CustomSignupButton> createState() => _CustomSignupButtonState();
}

class _CustomSignupButtonState extends State<CustomSignupButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.0,
      child: ElevatedButton(
          onPressed: widget.fuc,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: ApplicationColor.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                ),
          )),
    );
  }
}
