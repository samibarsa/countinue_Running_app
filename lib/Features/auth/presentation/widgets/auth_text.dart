import 'package:flutter/material.dart';
import 'package:test_app/core/utils/textstyles.dart';

class AuthText extends StatelessWidget {
  const AuthText({super.key, required this.authtext});
  final String authtext;
  @override
  Widget build(BuildContext context) {
    return Text(
      authtext,
      style: Styles.textStyle21,
    );
  }
}
