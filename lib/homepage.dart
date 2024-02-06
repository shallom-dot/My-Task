import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_task/new.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Lottie.asset('assets/loading.json'),
    nextScreen: const MyWidget(),
    splashIconSize: 150,
    duration: 3000,
    splashTransition: SplashTransition.sizeTransition,
    pageTransitionType: PageTransitionType.leftToRightWithFade,
    animationDuration: const Duration(seconds: 50),);
  }
}