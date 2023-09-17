import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';


import '../home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late AnimationController _firstLogoController;
  late Animation<Offset> arrival;
  late Animation<EdgeInsets> movement;

  // Add a flag to track whether the animations have been initialized
  bool animationsInitialized = false;


  @override

  void initState() {
    super.initState();

    // Initialize animations only once
    if (!animationsInitialized) {
      _firstLogoController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 3500),
      );

      //Animation definition
      arrival = Tween<Offset>(
        begin: Offset(0.0, 5.0),
        end: Offset(0.0, 0.0),).animate(
        CurvedAnimation(
          parent: _firstLogoController,
          curve: Interval(0.0, 0.5, curve: Curves.bounceInOut),
        ),
      );

      movement = EdgeInsetsTween(
        begin: EdgeInsets.only(top: 300),
        end: EdgeInsets.only(top: 500),
      ).animate(
        CurvedAnimation(
          parent: _firstLogoController,
          curve: Interval(0.3, 0.5, curve: Curves.easeInOutCubicEmphasized),),
      );//Animation definition

      // Set the flag to true to indicate animations are initialized
      animationsInitialized = true;
    }
    //Animation execution
    _firstLogoController.forward();
    _firstLogoController.addStatusListener((status) {
      if (status == AnimationStatus.completed){
        Navigator.pushReplacement(context,
            PageTransition(
              type: PageTransitionType.fade, child: UIHomePage(), duration: Duration(milliseconds: 2000),
            ),);
      }
    });
  }

  @override

  void dispose(){
    super.dispose();

    // Dispose of the controller only if it has been initialized
    if (animationsInitialized) {
      _firstLogoController.dispose();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        color: Color(0xffEDECF2),

        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: Image.asset("assets/images/gadgetshome.png",
                  width: 1.sw,
                ),
              ),
            ),

            Positioned(
            bottom:50.h,
              right: 100.w,
              child: Text('Powered by Myles Gadget Home.',
              style: TextStyle(
              color: Colors.black,
              fontSize: 10.sp,
                fontWeight: FontWeight.w300,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
