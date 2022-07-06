import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool ObscureText;
  final Widget? icon;
  final Widget? prefixIcon;

  final Function(String) onChanged;
  final TextInputType? keyboardType;

  ReusableTextField({
    required this.hintText,
    required this.labelText,
    this.ObscureText = false,
    this.icon,
    this.prefixIcon,
    required this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      autocorrect: false,
      enableSuggestions: false,
      obscureText: ObscureText,
      cursorColor: Colors.white,
      style: TextStyle(
        color: Colors.green,
        fontFamily: 'poppins',
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(15.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade600,
        ),
        floatingLabelStyle: TextStyle(color: Colors.grey.shade500),
        labelStyle: TextStyle(color: Colors.grey.shade500),
        labelText: labelText,
      ),
    );
  }
}
