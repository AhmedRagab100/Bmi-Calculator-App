
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'loading.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children:  [
          SizedBox(
            height: 300.h,
            child: AnimatedSplashScreen(
              backgroundColor:const Color.fromARGB(0, 255, 255, 255),
              splashIconSize: 200,
              splashTransition: SplashTransition.fadeTransition,
              splash: Image(image:const AssetImage('assets/images/BMI-Calculator.png'),width: 350.w,height: 250.h,),
              
                
              
              nextScreen:const Loading()
              ),
          ),
            SizedBox(height: 10.h,),
      
              SizedBox(
                height: 100.h,
                child: const SpinKitThreeBounce(
                    color: Colors.amber,
                    size: 30.0,
                    
                    
                  ),
              ),
        ],
      ),
    );
  }
}