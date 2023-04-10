import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Result extends StatelessWidget {
  final String result;
  final bool ismale;
  final int age;
  final String status;

  const Result(
      {super.key,
      required this.result,
      required this.ismale,
      required this.age,
      required this.status
      }
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 134, 40, 151),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Text(
            'YOUR RESULT...',
            style: TextStyle(fontSize: 25.sp),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: const AssetImage('assets/images/onboarding.png'),
              width: 300.w,
              height: 300.h,
            ),
            Container(
              width: 330.w,
              height: 250.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Age : $age',
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Gender : ${ismale ? 'Male' : 'Female'}',
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Bmi Result : $result',
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Status : $status',
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
