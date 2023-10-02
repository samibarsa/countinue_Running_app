import 'package:flutter/material.dart';
import 'package:test_app/Features/Get%20Started/presentation/widgets/custom_button.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/coustom_divider.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/email_textformfiled.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/go_to_sign_up.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/log_in_sochialmedia.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/login_logo.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/password_fields.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/remeberme.dart';
import 'package:test_app/core/utils/textstyles.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});
  final bool check = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            const LoginLogo(),
            const SizedBox(
              height: 88,
            ),
            const Text(
              "Log In",
              style: Styles.textStyle21,
            ),
            const SizedBox(
              height: 16,
            ),
            EmailTextFormFiled(onFieldSubmitted: (value) {}),
            const SizedBox(
              height: 12,
            ),
            PassWordFieled(),
            const SizedBox(
              height: 12,
            ),
            const Remeberme(),
            const SizedBox(
              height: 24,
            ),
            CoustomBoutton(
              onPressed: () {},
              minwidth: 330,
              textbutton: "Log in",
            ),
            const SizedBox(
              height: 20,
            ),
            const CoustomDivider(),
            const SizedBox(
              height: 13,
            ),
            const LoginSochialMedia(),
            const SizedBox(
              height: 40,
            ),
            const GoToSignUp(),
            const SizedBox(
              height: 34,
            )
          ]),
        ));
  }
}
