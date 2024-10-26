import 'package:flutter/material.dart';
import '../../product/constant/colors.dart';

class SocialMediaLinks extends StatefulWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final IconData? icon;
  const SocialMediaLinks(
      {super.key, required this.onPressed, this.backgroundColor, this.icon});

  @override
  State<SocialMediaLinks> createState() => _SocialMediaLinksState();
}

class _SocialMediaLinksState extends State<SocialMediaLinks> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: SizedBox(
          height: 60.0,
          child: ElevatedButton(
            onPressed: widget.onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.backgroundColor ?? Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Köşelerin ovalığı
              ),
            ),
            child: Icon(
              widget.icon ?? Icons.error,
              color: ApplicationColor.white,
              size: 29.0,
            ),
          ),
        ),
      ),
    );
  }
}
