import 'package:flutter/material.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/coustom_Textform_field.dart';
import 'package:test_app/core/utils/textstyles.dart';

class EmailTextFormFiled extends StatelessWidget {
  const EmailTextFormFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CoustomTextFormField(
      hinttext: "Dani@gmail.com",
      hintStyle: Styles.textStyle14
          .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
