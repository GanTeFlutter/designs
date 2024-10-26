import 'package:flutter/material.dart';
import 'package:market_app/product/constants/application_collors.dart';
import 'package:market_app/product/constants/application_string.dart';

class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword({
    super.key,
  });

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          //Background rengi
          filled: true,
          fillColor: ApplicationColors.white,
          //icon
          prefixIcon: Icon(Icons.lock_outline),
          prefixIconColor: ApplicationColors.textfieldBorderColor,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ApplicationColors.textfieldBorderColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: ApplicationString.password,
          hintStyle: TextStyle(color: ApplicationColors.textfieldBorderColor, fontSize: 15),
        ),
      ),
    );
  }
}
