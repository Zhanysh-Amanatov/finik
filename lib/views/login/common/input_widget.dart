/*External dependencies */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatelessWidget {
  final TextInputType? inputType;
  final String hintText;
  final Icon? icon;
  final TextEditingController? controller;
  final bool isObscure;

  const InputWidget({
    super.key,
    this.inputType,
    required this.hintText,
    this.icon,
    this.controller,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 48.h,
      child: TextFormField(
        obscureText: isObscure,
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: const Color(0xFF3A3A3A), width: 1.5.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: const Color(0xFF3A3A3A), width: 1.5.w),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          filled: true,
          fillColor: const Color(0xFF222222),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFF5572)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFFF5572)),
          ),
          errorStyle: TextStyle(fontSize: 0.1.sp),
          focusColor: const Color(0xFF222222),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF222222), width: 1),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xFFFFFFFF),
          ),
          prefixIcon: icon,
          iconColor: const Color(0xFF929BA9),
        ),
        cursorColor: Colors.white,
        style: const TextStyle(color: Colors.white),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Invalid data';
          }
          return null;
        },
      ),
    );
  }
}
