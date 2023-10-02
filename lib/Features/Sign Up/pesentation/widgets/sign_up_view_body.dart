// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/Features/Get%20Started/presentation/widgets/custom_button.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/coustom_divider.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/email_textformfiled.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/log_in_sochialmedia.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/login_logo.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/password_fields.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/remeberme.dart';
import 'package:test_app/Features/Sign%20Up/manager/bloc/SignUp/sign_up_bloc.dart';
import 'package:test_app/Features/Sign%20Up/pesentation/widgets/go_to_login.dart';
import 'package:test_app/core/utils/textstyles.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  bool check = false;
  @override
  Widget build(BuildContext context) {
    String? email;
    String? password;
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
        } else if (state is SignUpSucsess) {
        } else {
          print("error from sami");
        }
      },
      builder: (context, state) {
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
                  "Sign Up",
                  style: Styles.textStyle21,
                ),
                const SizedBox(
                  height: 16,
                ),
                EmailTextFormFiled(onChanged: (value) {
                  email = value;
                }),
                const SizedBox(
                  height: 12,
                ),
                PassWordFieled(
                  onChanged: (value) {
                    password = value;
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                const Remeberme(),
                const SizedBox(
                  height: 24,
                ),
                CoustomBoutton(
                  onPressed: () async {
                    BlocProvider.of<SignUpBloc>(context)
                        .add(SignUp(email: email, password: password));
                  },
                  minwidth: 330,
                  textbutton: "Sign Up",
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
                const GoToLogIn(),
                const SizedBox(
                  height: 34,
                )
              ]),
            ));
      },
    );
  }
}
