import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';

class passTextField extends StatelessWidget {
  passTextField({super.key, required this.passController,});

  final TextEditingController passController;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return TextFormField(
          obscureText: obscureText,
          controller: passController,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: 'password'.tr,
            hintStyle: TextStyle(
              color: hintTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                'assets/icons/lock.svg',
              ),
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 40.h,
              maxWidth: 40.w,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: Icon(
                obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined ,
                color: hintTextColor,
                size: 18,
              ),
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
              return 'please_enter_password'.tr;
            }
            return null;
          },
        );
      }
    );
  }
}
