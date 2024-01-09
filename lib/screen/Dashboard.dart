import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:likho/utils/NumberIntl.dart';
import 'package:likho/utils/colors.dart';
import 'package:likho/widget/TaskCard.dart';
import '../utils/TaskStatus.dart';
import '../utils/TaskTag.dart';

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
        primary: true,
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
                      style: const TextStyle(
                        color: Color(0xFF11165D),
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'lets_make_this_day_productive'.tr,
                      style: const TextStyle(
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
                    decoration: const BoxDecoration(
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
                          Get.updateLocale(const Locale('bn', 'BD'));
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
              style: const TextStyle(
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
                              color: const Color(0xFF7DC8E7).withOpacity(0.5),
                              blurRadius: 15,
                              offset: const Offset(5, 6),
                              spreadRadius: 0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(14.r),
                          child: InkWell(
                            onTap: () {
                              Get.updateLocale(const Locale('en', 'US'));
                            },
                            borderRadius: BorderRadius.circular(14.r),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14.r),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(16.r),
                                decoration: const BoxDecoration(
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
                                      style: const TextStyle(
                                        color: Color(0xFF11165D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '${digits(86)} ${'task'.tr}',
                                      style: const TextStyle(
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
                              color: const Color(0xFFE77D7D).withOpacity(0.5),
                              blurRadius: 15,
                              offset: const Offset(4, 4),
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
                                decoration: const BoxDecoration(
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
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '${digits(13)} ${'task'.tr}',
                                      style: const TextStyle(
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
                              color: const Color(0xFF7D88E7).withOpacity(0.5),
                              blurRadius: 15,
                              offset: const Offset(4, 4),
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
                                decoration: const BoxDecoration(
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
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '${digits(22)} ${'task'.tr}',
                                      style: const TextStyle(
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
                              color: const Color(0xFF81E89E).withOpacity(0.5),
                              blurRadius: 15,
                              offset: const Offset(5, 6),
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
                                decoration: const BoxDecoration(
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
                                      style: const TextStyle(
                                        color: Color(0xFF11165D),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '${digits('0')} ${'task'.tr}',
                                      style: const TextStyle(
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
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'view_all'.tr,
                    style: const TextStyle(
                      color: Color(0xFF393F93),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary:  false,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TaskCard(
                      tags: const [
                        TaskTag.office,
                        TaskTag.home,
                        TaskTag.urgent
                      ],
                      title: 'Design Meeting ' + digits(index),
                      time: '10:00 - 11:00',
                      status: TaskStatus.values[index],
                      inHome: true,
                      onFunction: () {

                      },
                    ),
                  );
                },
            ),
            SizedBox(
              height: 75.h,
            ),
          ],
        ),
      ),
    );
  }
}
