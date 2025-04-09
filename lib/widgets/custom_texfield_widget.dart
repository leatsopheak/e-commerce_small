import 'package:flutter/material.dart';

class CustomTexFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  const CustomTexFieldWidget({super.key, this.hintText,this.prefixIcon,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? Icon(
          prefixIcon,
          color: Color(0xffD9D9D9),
        ):null,
        suffixIcon: suffixIcon != null? Icon(suffixIcon, 
          color: Color(0xffD9D9D9),
        ):null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffD9D9D9),
        ),
      ),
    );
  }
}
