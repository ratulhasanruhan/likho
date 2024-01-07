import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likho/utils/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${'hi'.tr}, Steven',
                      style: TextStyle(
                        color: Color(0xFF11165D),
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'lets_make_this_day_productive'.tr,
                      style: TextStyle(
                        color: Color(0xFF575757),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFF1F6FF),
                          blurRadius: 13,
                          offset: Offset(-3, 7),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14.r),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(14.r),
                        onTap: () {
                          Get.updateLocale(Locale('bn', 'BD'));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.r),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: hintTextColor,
                            size: 24.r,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 26 .h,
            ),
            Text(
              'my_tasks'.tr,
              style: TextStyle(
                color: textColor,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF7DC8E7).withOpacity(0.5),
                              blurRadius: 15,
                              offset: Offset(5, 6),
                              spreadRadius: 0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(14.r),
                          child: InkWell(
                            onTap: () {
                              Get.updateLocale(Locale('en', 'US'));
                            },
                            borderRadius: BorderRadius.circular(14.r),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.r),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16.r),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/complete_back.png',
                                    ),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,

                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/imac.png',
                                          height: 70.h,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/arrow_right_black.svg',
                                          height: 14.h,
                                          width: 14.w,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'completed'.tr,
                                      style: TextStyle(
                                        color: Color(0xFF11165D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '86 ' + 'task'.tr,
                                      style: TextStyle(
                                        color: Color(0xFF11165D),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFE77D7D).withOpacity(0.5),
                              blurRadius: 15,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(14.r),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(14.r),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.r),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16.r),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/canceled_back.png',
                                    ),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,

                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/close_square.svg',
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/arrow_right_white.svg',
                                          height: 14.h,
                                          width: 14.w,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'canceled'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '13 ' + 'task'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF7D88E7).withOpacity(0.5),
                              blurRadius: 15,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(14.r),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(14.r),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.r),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16.r),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/pending_back.png',
                                    ),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,

                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/time_square.svg',
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/arrow_right_white.svg',
                                          height: 14.h,
                                          width: 14.w,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'pending'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '22 ' + 'task'.tr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF81E89E).withOpacity(0.5),
                              blurRadius: 15,
                              offset: Offset(5, 6),
                              spreadRadius: 0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(14.r),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(14.r),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.r),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16.r),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/ongoing_back.png',
                                    ),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.topCenter,

                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/folder.png',
                                          height: 70.h,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons/arrow_right_black.svg',
                                          height: 14.h,
                                          width: 14.w,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'on_going'.tr,
                                      style: TextStyle(
                                        color: Color(0xFF11165D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '56 ' + 'task'.tr,
                                      style: TextStyle(
                                        color: Color(0xFF11165D),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'today_task'.tr,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Color(0xFF393F93),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),

            Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xFFF9FAFD),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: VerticalDivider(
                                color: Color(0xFF8F99EB),
                                width: 2,
                                thickness: 2,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.72,
                                  child: Text(
                                    'Cleaning Clothes and wrap.',
                                    style: TextStyle(
                                      color: Color(0xFF2C406E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Text(
                                  '07:00 - 07:15',
                                  style: TextStyle(
                                    color: Color(0xFF99A7C6),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Material(
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(14.r),
                          child: Padding(
                            padding: EdgeInsets.all(4.r),
                            child: Icon(
                              Icons.more_vert_rounded,
                              color: textColor,
                              size: 16.r,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          color: Color(0xFF8F99EB).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Urgent',
                          style: TextStyle(
                            color: Color(0xFF8F99EB),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          color: Color(0xFF8F99EB).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFF8F99EB),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xFFF9FAFD),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: VerticalDivider(
                                color: Color(0xFFE88B8C),
                                width: 2,
                                thickness: 2,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.72,
                                  child: Text(
                                    'Cleaning Clothes',
                                    style: TextStyle(
                                      color: Color(0xFF2C406E),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Text(
                                  '07:00 - 07:15',
                                  style: TextStyle(
                                    color: Color(0xFF99A7C6),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Material(
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(14.r),
                          child: Padding(
                            padding: EdgeInsets.all(4.r),
                            child: Icon(
                              Icons.more_vert_rounded,
                              color: textColor,
                              size: 16.r,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          color: Color(0xFF8F99EB).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Urgent',
                          style: TextStyle(
                            color: Color(0xFF8F99EB),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          color: Color(0xFF8F99EB).withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFF8F99EB),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
