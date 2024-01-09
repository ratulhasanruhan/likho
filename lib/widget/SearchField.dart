import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {super.key,
        required this.mainContext,
        required this.controller,
        required this.onChanged,
        this.focusNode,
      });

  final BuildContext mainContext;
  final TextEditingController controller;
  final Function(String) onChanged;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 16.w,
        ),
        hintText: 'search_for_task'.tr,
        hintStyle: TextStyle(
          color: Color(0xFFCDD0E6),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        isDense: true,
        prefixIcon: SvgPicture.asset(
          'assets/icons/search.svg',
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 44.w,
          minHeight: 21.h,
          maxHeight: 21.h,
          maxWidth: 44.w,
        ),
        suffixIcon: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40.r),
          child: InkWell(
            onTap: () {
              controller.clear();
              FocusScope.of(mainContext).unfocus();
            },
            borderRadius: BorderRadius.circular(40.r),
            child: SvgPicture.asset(
              'assets/icons/close_square_bold.svg',
            ),
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          minWidth: 40.w,
          minHeight: 16.h,
          maxHeight: 16.h,
          maxWidth: 40.w,
        ),
        filled: true,
        fillColor: Color(0xFFF6F6F6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
