import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/log_in_view_body.dart';
import 'package:test_app/core/utils/constant.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

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
      body: const LogInViewBody(),
    );
  }
}
