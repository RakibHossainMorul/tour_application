import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:tour_application/const/app_colors.dart';
import 'package:tour_application/ui/route/route.dart';
import 'package:tour_application/ui/styles/styles.dart';
import 'package:tour_application/ui/views/privacy_policy.dart';
import 'package:tour_application/ui/widgets/form_field.dart';
import 'package:tour_application/ui/widgets/violetButton.dart';

class UserForm extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  _selectedDateAction(BuildContext context) async {
    final select = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
    if (select != null && select != _selectedDate) {
      _dobController.text = '${select.day}-${select.month}-${select.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  "Tell Us More About You.",
                  style: TextStyle(
                    color: appColors.violetColor,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "We will not share your information outside this application.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                formField(_nameController, TextInputType.text, 'Your Name'),
                formField(
                    _phoneController, TextInputType.number, 'Phone Number'),
                formField(_addressController, TextInputType.text, 'Address'),
                TextFormField(
                  readOnly: true,
                  controller: _dobController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Date of Birth',
                      hintStyle: TextStyle(
                        fontSize: 15.sp,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () => _selectedDateAction(context),
                        icon: Icon(Icons.calendar_view_month_rounded),
                      )),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    labels: ['male', 'Female'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                violetButton('Submit', () => Get.toNamed(privacyPolicyRoute)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
