// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tour_application/const/app_colors.dart';
import 'package:tour_application/ui/route/route.dart';
import 'package:tour_application/ui/styles/styles.dart';
import 'package:tour_application/ui/views/authentication/sign_up.dart';

class OnboardingScreen extends StatelessWidget {
  final List<String> _lottieFiles = [
    'assets/files/welcome.json',
    'assets/files/categories.json',
    'assets/files/support.json'
  ];
  final List<String> _tittle = ['Welcome', 'Categories', 'Support'];
  final List<String> _description = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
  ];
  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(30.w),
          child: Column(
            children: [
              Obx(
                () => Expanded(
                    flex: 2,
                    child: Lottie.asset(_lottieFiles[_currentIndex.toInt()])),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: appColors.getScaffoldColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4, 4),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Obx(
                            () => Text(
                              _tittle[_currentIndex.toInt()],
                              style: appStyle.fontStyleOne,
                            ),
                          ),
                          Obx(() => Text(_description[_currentIndex.toInt()])),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(
                                () => DotsIndicator(
                                  dotsCount: _lottieFiles.length,
                                  position: _currentIndex.toDouble(),
                                  decorator: DotsDecorator(),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if (_currentIndex == 2) {
                                    Get.toNamed(signUpRoute);
                                  } else {
                                    _currentIndex + 1;
                                  }
                                },
                                child: Container(
                                  height: 37.h,
                                  width: 37.h,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(4, 4),
                                          blurRadius: 10,
                                          spreadRadius: 1,
                                        ),
                                        BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-4, -4),
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
