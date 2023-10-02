import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/Features/Sign%20Up/pesentation/widgets/sign_up_view_body.dart';
import 'package:test_app/core/utils/constant.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimeryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      body: SignUpViewBody(),
    );
  }
}
