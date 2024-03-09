import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class TextFieldWidget extends StatelessWidget {
  final Color? fillColor;
  final String? hintText;
  final Color? hintTextColor;
  final IconData? prefixIcon;

  const TextFieldWidget({
    Key? key,
    this.fillColor = Colors.grey,
    this.hintText,
    this.hintTextColor = Colors.grey,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      width: 40.w,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor, // Background color
          hintText: hintText, // Hint text
          hintStyle: TextStyle(color: hintTextColor), // Hint text color
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          // Hover color
          hoverColor: Colors.grey[300],
          prefixIcon:
              prefixIcon != null ? Icon(prefixIcon) : null, // Prefix icon
        ),
      ),
    );
  }
}
