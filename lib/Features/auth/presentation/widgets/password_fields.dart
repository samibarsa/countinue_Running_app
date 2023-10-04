// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/core/helper/coustom_Textform_field.dart';
import 'package:test_app/core/utils/images.dart';
import 'package:test_app/core/utils/textstyles.dart';

class PassWordFieled extends StatelessWidget {
  const PassWordFieled({super.key, required this.onChanged});
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    bool obscuretext = true;
    return CoustomTextFormField(
      onChanged: onChanged,
      obscuretext: obscuretext,
      suffix: GestureDetector(
        onTap: () {
          if (obscuretext == true) {
            obscuretext = false;
          } else {
            obscuretext = true;
          }
        },
        child: SvgPicture.asset(
          ImagePath.hidepassword,
          fit: BoxFit.fill,
        ),
      ),
      hinttext: "Password",
      hintStyle: Styles.textStyle14,
    );
  }
}
