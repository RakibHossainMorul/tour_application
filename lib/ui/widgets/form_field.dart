import 'package:flutter/material.dart';
import 'package:tour_application/ui/styles/styles.dart';

Widget formField(controller, inputType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: appStyle.textFieldDecoration(hint),
  );
}
