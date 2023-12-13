import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(
      context,
      designSize: Size(750, 1334),  // Width and height of the design UI
    );

    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter App'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(20.w),
              child: Center(
                child: Text('16sp,if data is not set in MediaQuery,my font size will change with the system.',

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(20.w),
              child: Center(
                child: Text(
                   '16sp,if data is not set in MediaQuery,my font size will change with the system.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}