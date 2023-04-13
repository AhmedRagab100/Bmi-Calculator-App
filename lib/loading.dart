// Responsive Supported
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';
import 'bmi.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    
    super.initState();

    Future.delayed(const Duration(seconds: 1)).then((value) {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BMI()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GFShimmer(
          mainColor:const Color.fromARGB(255, 192, 190, 190),
          secondaryColor:const Color.fromRGBO(255, 255, 255, 1),
        
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              SafeArea(
                child: Padding(
                  padding:const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 43.w,
                          height: 43.h,
                          decoration:const BoxDecoration(
                            color: Color.fromRGBO(230, 230, 230, 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                          
                        Container(
                          width: 180.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color:const Color.fromRGBO(230, 230, 230, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        
                        Container(
                          width: 43.w,
                          height: 43.h,
                          decoration:const BoxDecoration(
                            color: Color.fromRGBO(230, 230, 230, 1),
                            shape: BoxShape.circle,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Container(
                          width: 150.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            color:const Color.fromRGBO(230, 230, 230, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 150.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            color:const Color.fromRGBO(230, 230, 230, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                
              
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding:const EdgeInsets.all(5.0),
                child: SizedBox(
                  child:
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Container(
                              width: 330.w,
                              height: 250.h,
                              decoration: BoxDecoration(
                                color:const Color.fromRGBO(230, 230, 230, 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        
                      
                    
                  
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 30.w),
                        child: Container(
                          width: 150.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            color:const Color.fromRGBO(230, 230, 230, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Container(
                          width: 150.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            color:const Color.fromRGBO(230, 230, 230, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
