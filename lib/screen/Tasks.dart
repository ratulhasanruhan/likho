import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:likho/widget/SearchField.dart';

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

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
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  print(value);
                });
              },
            ),

          ],
        ),
      ),
    );
  }
}
