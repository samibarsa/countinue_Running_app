// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/coustom_Textform_field.dart';
import 'package:test_app/core/utils/images.dart';
import 'package:test_app/core/utils/textstyles.dart';

class PassWordFieled extends StatefulWidget {
  const PassWordFieled({super.key});

  @override
  State<PassWordFieled> createState() => _PassWordFieledState();
}

class _PassWordFieledState extends State<PassWordFieled> {
  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return CoustomTextFormField(
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
