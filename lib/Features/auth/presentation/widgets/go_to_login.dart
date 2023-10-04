import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/core/utils/router.dart';
import 'package:test_app/core/utils/textstyles.dart';

class GoToLogIn extends StatelessWidget {
  const GoToLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: Styles.textStyle14.copyWith(color: Colors.white),
        ),
        GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kLogIn);
            },
            child: Text(
              " Login",
              style:
                  Styles.textStyle14.copyWith(color: const Color(0xff677FFF)),
            )),
      ],
    );
  }
}
