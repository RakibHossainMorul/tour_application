import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tour_application/ui/widgets/violetButton.dart';

class privacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.h, right: 30.h, top: 10.h),
          child: Column(
            children: [
              Expanded(child: Container()),
              violetButton('Agree', () {}),
              SizedBox(
                height: 15.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
