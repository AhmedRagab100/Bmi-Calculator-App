import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bmi_result.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool male = true;
  double height = 120;
  int weight = 60;
  int age = 20;
  String status = '';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      
      Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor:const Color(0xFF873bcc),
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(left: 35.w),
            child: Text(
              'Bmi Calculator',
              style: TextStyle(fontSize: 25.sp, color: Colors.black,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height / 1,
          decoration:const BoxDecoration(
            gradient: LinearGradient(colors: [
                
                Color(0xFF873bcc),
                Color.fromARGB(255, 205, 86, 138),
                Color.fromARGB(255, 197, 108, 91),
                Color(0xFF68998c)
                

            ],
            stops: [
              0.2,
              0.4,
              0.6,
              0.9
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            ),
            
          ),
          child: SingleChildScrollView(
            
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
                height: 740.h,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  male = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: male
                                        ?const Color.fromRGBO(242, 200, 75, 1)
                                        : const Color.fromRGBO(83, 114, 143, 1)
                                            ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                        'assets/images/male.png',
                                      ),
                                      width: 150.w,
                                      height: 125.h,
                                    ),
                                    Text(
                                      'MALE',
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                            color:  Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  male = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: male
                                      ? const Color.fromRGBO(83, 114, 143, 1)
                                      : const Color.fromRGBO(242, 200, 75, 1)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: const AssetImage(
                                        'assets/images/female.png',
                                      ),
                                      width: 150.w,
                                      height: 125.h,
                                    ),
                                    Text(
                                      'FEMALE',
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                            color:  Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(83, 114, 143, 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                                fontSize: 30.sp, fontWeight: FontWeight.bold, color:  Colors.white,),
                                
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                '${height.round()}',
                                style: TextStyle(
                                    fontSize: 48.sp, fontWeight: FontWeight.bold, color:  Colors.white,),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 25.sp,
                                  color:  Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Slider(
                            activeColor: const Color.fromRGBO(242, 200, 75, 1),
                            value: height,
                            max: 250,
                            min: 100,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(83, 114, 143, 1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                      fontSize: 25.sp,
                                        color:  Colors.white,
                                      fontWeight: FontWeight.bold),
                                      
                                ),
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                      fontSize: 45.sp,
                                        color:  Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor:
                                      const Color.fromRGBO(242, 200, 75, 1),
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      heroTag: 'btn1',
                                      mini: true,
                                      child: const Icon(Icons.remove,color: Colors.black,),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width / 40,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor:
                                          const Color.fromRGBO(242, 200, 75, 1),
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      heroTag: 'btn2',
                                      mini: true,
                                      child: const Icon(Icons.add,color: Colors.black,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(83, 114, 143, 1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                      fontSize: 25.sp,
                                        color:  Colors.white,  
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(
                                      fontSize: 45.sp,
                                        color:  Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor:
                                          const Color.fromRGBO(242, 200, 75, 1),
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      heroTag: 'btn3',
                                      mini: true,
                                      child: const Icon(Icons.remove,color: Colors.black,),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width / 40,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor:
                                        const Color.fromRGBO(242, 200, 75, 1), 
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      heroTag: 'btn4',
                                      mini: true,
                                      child: const Icon(Icons.add,color: Colors.black,),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
                    width: double.infinity,
                    height: 55.h,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      highlightColor: Colors.grey[600],
                      color: const Color.fromRGBO(83, 114, 143, 1),
                      onPressed: () {
                        //logic of the app
                        double result = weight / pow(height / 100, 2);
                        String resultFormatted = result.toStringAsFixed(1);
                        
                        if (result >= 18.5 && result <= 25) {
                          setState(() {
                            status = 'Normal';
                          });
                        } else if (result < 18.5) {
                          setState(() {
                            status = 'underweighted';
                          });
                        } else {
                          setState(() {
                            status = 'Overweighted';
                          });
                        }
                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Result(
                                      result: resultFormatted,
                                      ismale: male,
                                      age: age,
                                      status: status,
                                    )));
                      },
                      child: Text(
                        'CALCULATE',
                        style: TextStyle(color: Colors.white, fontSize: 23.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
