import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_application/const/app_colors.dart';

class violetButton extends StatelessWidget {
  String buttonText;
  violetButton(this.buttonText);
  RxBool _value = false.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = true;
        },
        child: Container(
            height: 46.h,
            decoration: BoxDecoration(
              color: appColors.violetColor,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: _value == false
                ? Center(
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Please Wait",
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Transform.scale(
                          scale: 0.5,
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                          )),
                    ],
                  )),
      ),
    );
  }
}
