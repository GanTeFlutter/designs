import 'package:flutter/material.dart';
import 'package:market_app/product/constants/application_collors.dart';

class CustomTextEmailField extends StatefulWidget {
  const CustomTextEmailField({
    super.key,
  });

  @override
  State<CustomTextEmailField> createState() => _CustomTextEmailFieldState();
}

class _CustomTextEmailFieldState extends State<CustomTextEmailField> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        //Background rengi
        filled: true,
        fillColor: ApplicationColors.white,
        //icon
        prefixIcon: Icon(Icons.email_outlined),
        prefixIconColor: ApplicationColors.textfieldBorderColor,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ApplicationColors.textfieldBorderColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        hintText: 'Email',
        hintStyle: TextStyle(color: ApplicationColors.textfieldBorderColor, fontSize: 15),
      ),
    );
  }
}
