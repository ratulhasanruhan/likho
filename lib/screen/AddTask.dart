import 'dart:developer';

import 'package:awesome_bottom_bar/chip_style.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:likho/utils/TaskTag.dart';
import 'package:likho/utils/colors.dart';
import 'package:some_calendar/some_calendar.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key, this.fromMain = false});

  final bool fromMain;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  final gemini = Gemini.instance;

  DateTime selectedDate = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  TextEditingController dateController = TextEditingController(text: DateFormat('d MMMM yyyy').format(DateTime.now()));
  TextEditingController startTimeController = TextEditingController(text: DateFormat('hh:mm  a').format(DateTime.now()));
  TextEditingController endTimeController = TextEditingController(text: DateFormat('hh:mm  a').format(DateTime.now().add(const Duration(hours: 1),)));

  List<TaskTag> selectedTag = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'add_task'.tr,
          style: const TextStyle(
            color: midTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading:  widget.fromMain
        ? null
        : Padding(
          padding: EdgeInsets.all(8.r),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFF1F6FF),
                  blurRadius: 13,
                  offset: Offset(-3, 7),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: EdgeInsets.all(7.r),
                  child: SvgPicture.asset(
                    'assets/icons/arrow_left.svg',
                  ),
                ),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'title'.tr,
              style: const TextStyle(
                color: midLightText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              controller: titleController,
              onEditingComplete: () {
                 gemini.text('Find a image related to - ${titleController.text}.')
                    .then((value) {
                  descriptionController.text = value!.toString() ?? '';
                  print('Gemini: $value');
                  return null;
                })
                    .catchError((e) {
                  log('Gemini Error: $e');
                  return null;
                 });
                 return;
              },
              style: TextStyle(
                  color: midTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              decoration: InputDecoration(
                hintText: 'task_name'.tr,
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: underlineColor,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: underlineColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'date'.tr,
              style: const TextStyle(
                color: midLightText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => SomeCalendar(
                      mode: SomeMode.Single,
                      isWithoutDialog: false,
                      selectedDate: selectedDate,
                      primaryColor: primaryColor,
                      labels: Labels(
                        dialogDone: 'confirm'.tr,
                        dialogCancel: 'cancel'.tr,
                      ),
                      startDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 30),),
                      done: (date) {
                        setState(() {
                          selectedDate = date;
                          dateController.text = DateFormat('d MMMM yyyy').format(date);
                        });
                      },
                    ));

              },
              controller: dateController,
              style: TextStyle(
                  color: midTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              decoration: InputDecoration(
                hintText: 'task_name'.tr,
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: underlineColor,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: underlineColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.all(3.r),
                  child: SvgPicture.asset(
                    'assets/icons/calendar.svg',
                    color: Color(0xFFA8AEDF),
                  ),
                ),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 23.h,
                  minWidth: 23.w,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'time'.tr,
              style: const TextStyle(
                color: midLightText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: TextFormField(
                      controller: startTimeController,
                      style: TextStyle(
                        color: midTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        hintText: 'start'.tr,
                        hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: underlineColor,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: underlineColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(
                          showPicker(
                            showSecondSelector: false,
                            context: context,
                            value: Time(hour: TimeOfDay.now().hour, minute: TimeOfDay.now().minute),
                            onChange: (Time time){
                              setState(() {
                                startTimeController.text = time.format(context);
                              });
                            },
                            minuteInterval: TimePickerInterval.FIVE,
                            cancelText: 'cancel'.tr,
                            okText: 'confirm'.tr,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Flexible(
                    flex: 2,
                    child: TextFormField(
                      controller: endTimeController,
                      style: TextStyle(
                        color: midTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        hintText: 'end'.tr,
                        hintStyle: TextStyle(
                          color: hintTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: underlineColor,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: underlineColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(
                          showPicker(
                            showSecondSelector: false,
                            context: context,
                            value: Time(hour: TimeOfDay.now().hour, minute: TimeOfDay.now().minute),
                            onChange: (Time time){
                              setState(() {
                                endTimeController.text = time.format(context);
                              });
                            },
                            minuteInterval: TimePickerInterval.FIVE,
                            cancelText: 'cancel'.tr,
                            okText: 'confirm'.tr,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'description'.tr,
              style: const TextStyle(
                color: midLightText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              controller: descriptionController,
              minLines: 1,
              maxLines: 5,
              style: TextStyle(
                color: midTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: 'task_details'.tr,
                hintStyle: TextStyle(
                  color: hintTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: underlineColor,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: underlineColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'tags'.tr,
              style: const TextStyle(
                color: midLightText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            ChipsChoice<TaskTag>.multiple(
              value: TaskTag.values.toList().where((element) => selectedTag.contains(element)).toList(),
              onChanged: (val) {
                setState(() {
                  selectedTag = val;
                });
              },
              choiceItems: C2Choice.listFrom<TaskTag, TaskTag>(
                source: TaskTag.values,
                value: (i, v) => v,
                label: (i, v) => v.name,
                style: (i, v) => C2ChipStyle.filled(
                  color: v.color,
                  backgroundOpacity: 0.1,
                ),
              ),
              choiceLabelBuilder: (item, i) => Text(
                item.label,
                style: TextStyle(
                  color: item.value.color,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              choiceCheckmark: true,
              wrapped: true,
            )
          ],
        ),
      ),
    );
  }
}
