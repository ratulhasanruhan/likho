import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class bigButton extends StatelessWidget {
  const bigButton({super.key, required this.name, required this.onPressed});

  final String name;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFF1F6FF),
            blurRadius: 13,
            offset: Offset(-3, 7),
            spreadRadius: 6,
          )
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(14.r),
        color: primaryColor,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(14.r),
          splashColor: Color(0xFF8AA8E9).withOpacity(0.1),
          child: Container(
              width: 304.w,
              height: 52.h,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(14.r),
              ),
              child: Center(
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}


