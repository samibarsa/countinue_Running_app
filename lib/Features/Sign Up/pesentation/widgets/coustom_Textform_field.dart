// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class CoustomTextFormField extends StatelessWidget {
  const CoustomTextFormField(
      {super.key,
      required this.hinttext,
      required this.hintStyle,
      this.suffix,
      this.obscuretext = false});
  final String hinttext;
  final TextStyle? hintStyle;
  final Widget? suffix;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        obscureText: obscuretext,
        decoration: InputDecoration(
            suffix: suffix,
            focusedBorder: outlineinputborder().copyWith(
                borderSide: const BorderSide(color: Color(0xff7B61FF))),
            hintText: hinttext,
            hintStyle: hintStyle,
            enabledBorder: outlineinputborder().copyWith(
                borderSide: const BorderSide(color: Color(0xff515b6c))),
            disabledBorder: outlineinputborder(),
            border: outlineinputborder()),
      ),
    );
  }

  OutlineInputBorder outlineinputborder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xff7B61FF),
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
