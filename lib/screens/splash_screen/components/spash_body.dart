import 'dart:async';
import 'package:flutter/material.dart';
import '../../../routes/routes_manage.dart';
import '../../../shared_preference/shared_preference_service.dart';


class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState(){
    Timer(const Duration(seconds: 3), () {

      // print("is login ----> ${PreferenceServices.getBoolData(key: PreferenceServices.isLoginKey)}");
      // print("onboarding ---->  ${PreferenceServices.getBoolData(key: PreferenceServices.isOnBoardingKey)}");

     if(PreferenceServices.getBoolData(key: PreferenceServices.isLoginKey)){
       Navigator.pushNamedAndRemoveUntil(context, AppRoutes.homeScreen, (route) => false );
     }
     else {
       Navigator.pushNamedAndRemoveUntil(
           context, AppRoutes.SignInScreen, (route) => false);
     }
      // Navigator.pushNamedAndRemoveUntil(context, AppRoutes.SignInScreen, (route) => false);


    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              Container(
                // height:  MediaQueryHelper.height * 500,
                // width: MediaQueryHelper.width * 400,
                decoration: const BoxDecoration(
                    gradient: RadialGradient(stops: [
                      0.1,
                      0.7,
                      1.0
                    ], colors: [
                      Color(0xFFFFFFFF),
                      Color(0xffff8935),
                      Color(0xfff3823a),
                    ])),
              ),
              Center(
                child: Image.asset('assets/images/logo.png',
                    height: 250, width: 250),
              ),
      
            ],
          )),
    );

  }
}
