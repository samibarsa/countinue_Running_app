import 'package:flutter/material.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/cosyum_checkbox.dart';
import 'package:test_app/core/utils/textstyles.dart';

class Remeberme extends StatelessWidget {
  const Remeberme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CoustomCheckBox(),
        const SizedBox(
          width: 12,
        ),
        Text(
          "Remember Me ",
          style: Styles.textStyle14.copyWith(color: Colors.white),
        ),
        const SizedBox(
          width: 84,
        ),
        Text("Forgot Password ?",
            style: Styles.textStyle14.copyWith(
                color: const Color(0xff7B61FF),
                fontWeight: FontWeight.w400,
                fontFamily: 'Lato'))
      ],
    );
  }
}
