import 'package:flutter/material.dart';
import 'package:test_app/core/helper/coustom_Textform_field.dart';
import 'package:test_app/core/utils/textstyles.dart';

class EmailTextFormFiled extends StatelessWidget {
  const EmailTextFormFiled({
    super.key,
    required this.onChanged,
  });
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return CoustomTextFormField(
      onChanged: (value) {},
      hinttext: "Dani@gmail.com",
      hintStyle: Styles.textStyle14
          .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
