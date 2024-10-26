import 'package:flutter/material.dart';

class NameOrEmail extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const NameOrEmail({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFD8D8DD),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: const Color(0xFFA09F99),
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
