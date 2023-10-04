import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/Features/auth/manager/bloc/SignUp/sign_up_bloc.dart';
import 'package:test_app/Features/auth/presentation/widgets/auth_logo.dart';
import 'package:test_app/Features/auth/presentation/widgets/auth_text.dart';
import 'package:test_app/Features/auth/presentation/widgets/coustom_divider.dart';
import 'package:test_app/Features/auth/presentation/widgets/email_textformfiled.dart';
import 'package:test_app/Features/auth/presentation/widgets/go_to_login.dart';
import 'package:test_app/Features/auth/presentation/widgets/log_in_sochialmedia.dart';
import 'package:test_app/Features/auth/presentation/widgets/password_fields.dart';
import 'package:test_app/Features/auth/presentation/widgets/remeberme.dart';
import 'package:test_app/core/helper/custom_button.dart';

// ignore: must_be_immutable
class AuthViewBody extends StatelessWidget {
  AuthViewBody(
      {super.key,
      required this.authtext,
      required this.onChangedemail,
      required this.onChangedpassword,
      required this.onPressed,
      required this.textbutton});
  bool check = false;
  String? email;
  String? passwoed;
  final void Function(String) onChangedemail;
  final void Function(String) onChangedpassword;
  final void Function() onPressed;
  final String authtext;
  final String textbutton;

  @override
  Widget build(BuildContext context) {
    String? email;
    String? password;
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          BlocProvider.of<SignUpBloc>(context).modalprogresshud = true;
        } else if (state is SignUpSucsess) {
          BlocProvider.of<SignUpBloc>(context).modalprogresshud = false;
        } else {
          BlocProvider.of<SignUpBloc>(context).modalprogresshud = false;

          // ignore: avoid_print
          print("error from sami");
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const AuthLogo(),
                const SizedBox(
                  height: 88,
                ),
                AuthText(authtext: authtext),
                const SizedBox(
                  height: 16,
                ),
                EmailTextFormFiled(onChanged: onChangedemail),
                const SizedBox(
                  height: 12,
                ),
                PassWordFieled(onChanged: onChangedpassword),
                const SizedBox(
                  height: 12,
                ),
                const Remeberme(),
                const SizedBox(
                  height: 24,
                ),
                CoustomBoutton(
                  onPressed: onPressed,
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
//                 const SizedBox(
//                   height: 34,
//                 )
              ],
            ),
          ),
        );
      },
    );
  }
}
