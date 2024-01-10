import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:likho/utils/NumberIntl.dart';
import 'package:likho/widget/SearchField.dart';

import '../utils/colors.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {

  final TextEditingController searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  final DateTime now = DateTime.now();
  String nowMonth = '';
  String nowYear = '';
  List<DateTime> weeks = [];
  int selectedDate = 3;
  
  @override
  void initState() {

    super.initState();
    date();
  }

  void date(){
    setState(() {
      nowMonth = DateFormat('MMMM').format(now).toLowerCase();
      nowYear = DateTime.now().year.toString();

      weeks = [
        now.subtract(const Duration(days: 3)),
        now.subtract(const Duration(days: 2)),
        now.subtract(const Duration(days: 1)),
        now,
        now.add(const Duration(days: 1)),
        now.add(const Duration(days: 2)),
        now.add(const Duration(days: 3)),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            SearchField(
              mainContext: context,
              focusNode: _focusNode,
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  print(value);
                });
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'task'.tr,
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/calendar.svg',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${nowMonth.tr} ${digits(nowYear)}',
                      style: const TextStyle(
                        color: Color(0xFF525E77),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            SizedBox(
              height: 72.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: weeks.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      //TODO: add animation
                      child: Material(
                        color: index == selectedDate ? primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              selectedDate = index;
                            });
                          },
                          borderRadius: BorderRadius.circular(12.r),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  DateFormat('EEE').format(weeks[index]).toLowerCase().tr,
                                  style: TextStyle(
                                    color: index == selectedDate ? Colors.white : midTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                                Text(
                                  digits(weeks[index].day.toString().padLeft(2, '0')),
                                  style: TextStyle(
                                    color: index == selectedDate ? Colors.white : midTextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'today'.tr,
                  style: const TextStyle(
                    color: midTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${digits(9).padLeft(2,'0')} ${'h'.tr} ${digits(30)} ${'min'.tr}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            Divider(
              color: dividerColor,
              thickness: 1,
              height: 20.h,
            ),

          ],
        ),
      ),
    );
  }
}
