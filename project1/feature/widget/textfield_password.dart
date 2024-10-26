import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const PasswordField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: Colors.grey,
      obscureText: _obscureText, 
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
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: const Color(0xFFA09F99),
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}
