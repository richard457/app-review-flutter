import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spenn/utils/app_colors.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          GestureDetector(
          onTap: () => Get.toNamed("/products"),
          child: Hero(
            tag: "logo", 
            child: Image.asset(
              "assets/spenn.png",
              width: 128,
              height: 128,
            ),
          ),
        ),
        Container(height:20),
        Text('click and purchase to get your loyality')
        ]),
      ),
    );
  }
}
