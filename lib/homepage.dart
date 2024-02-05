import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin{

late final AnimationController _controller;

@override
void initState(){
  super.initState();

  _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this);
}

@override
void dispose() {
  super.dispose();

  _controller.dispose();
}

bool logo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (logo == false) {
              logo = true;
              _controller.forward();
            } else{
              logo = false;
              _controller.reverse();
            }
          },
          child: Lottie.network('https://app.lottiefiles.com/animation/bd154b6b-e6f9-4caa-9eff-674af573783a',
          controller : _controller,
          ),
        )
      ),
    );
  }
}