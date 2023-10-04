import 'package:flutter/material.dart';
import 'package:test_app/core/utils/textstyles.dart';

class CoustomBoutton extends StatelessWidget {
  const CoustomBoutton({
    super.key,
    required this.textbutton,
    this.minwidth = 320,
    this.onPressed,
  });
  final String textbutton;

  final double minwidth;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: onPressed,
      minWidth: 320,
      height: 56,
      color: const Color(0xff7B61FF),
      child: Text(
        textbutton,
        style: Styles.textStyle18,
      ),
    );
  }
}
