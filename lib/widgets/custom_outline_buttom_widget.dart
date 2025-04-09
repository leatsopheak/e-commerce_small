import 'package:flutter/material.dart';

class CustomOutlineButtomWidget extends StatelessWidget {
  final String textButton ;
  final String IconsPath ;
  const CustomOutlineButtomWidget({super.key, required this.textButton,required this.IconsPath});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: Image.asset(
          "assets/icons/$IconsPath",
          width: 55,
        ),
        onPressed: () {},
        label: Text(textButton));
  }
}
