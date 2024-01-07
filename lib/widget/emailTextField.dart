import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';

class emailTextField extends StatelessWidget {
  const emailTextField({super.key, required this.emailController, this.name});
  final TextEditingController emailController;
  final name;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: name != null ? name : '${'email'.tr}',
        hintStyle: TextStyle(
          color: hintTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SvgPicture.asset(
            'assets/icons/message.svg',
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 40.h,
          maxWidth: 40.w,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: hintTextColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: hintTextColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: hintTextColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please_enter_email'.tr;
        } else if (!GetUtils.isEmail(value)) {
          return 'please_enter_a_valid_email'.tr;
        }
        return null;
      },
    );
  }
}
