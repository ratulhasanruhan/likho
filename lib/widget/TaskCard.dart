import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:likho/utils/TaskStatus.dart';
import '../utils/TaskTag.dart';
import '../utils/colors.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    this.tags = const [],
    required this.title,
    required this.status,
    required this.time,
    this.inHome = false,
    this.onFunction,
  }) : super(key: key);

  final List<TaskTag> tags;
  final String title;
  final TaskStatus status;
  final String time;
  final bool inHome;
  final Function()? onFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: inHome ? const Color(0xFFF9FAFD) : status.color.withOpacity(0.1),
      ),
      child: InkWell(
        onLongPress: onFunction,
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
                          color: status.color,
                          width: 2,
                          thickness: 2,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.72,
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Color(0xFF2C406E),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            time,
                            style: const TextStyle(
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
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onFunction,
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
              height: tags.isNotEmpty ? 14.h : 3.h,
            ),
            SizedBox(
              height: tags.isNotEmpty ? 22.h : 0,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 9),
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  itemCount: tags.length,
                  itemBuilder: (context, index){
                    return tags.isEmpty
                        ? const SizedBox()
                        : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                        decoration: BoxDecoration(
                          color: tags[index] == TaskTag.home && !inHome ? status.color.withOpacity(0.2) : tags[index].color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Center(
                          child: Text(
                            tags[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: tags[index] == TaskTag.home && !inHome ? status.color :tags[index].color,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
            )

          ],
        ),
      ),
    );
  }
}
