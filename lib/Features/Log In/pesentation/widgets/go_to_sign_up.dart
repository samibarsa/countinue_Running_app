import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/core/utils/router.dart';
import 'package:test_app/core/utils/textstyles.dart';

class GoToSignUp extends StatelessWidget {
  const GoToSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "New User?",
          style: Styles.textStyle14.copyWith(color: Colors.white),
        ),
        GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSignIn);
            },
            child: Text(
              " Sign Up",
              style:
                  Styles.textStyle14.copyWith(color: const Color(0xff677FFF)),
            )),
      ],
    );
  }
}
