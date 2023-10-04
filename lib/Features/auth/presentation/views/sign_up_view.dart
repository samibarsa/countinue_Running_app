import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:test_app/Features/auth/manager/bloc/SignUp/sign_up_bloc.dart';
import 'package:test_app/Features/auth/presentation/body/auth_view_body.dart';
import 'package:test_app/core/utils/constant.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return ModalProgressHUD(
            opacity: 0,
            blur: 2,
            progressIndicator:
                const SpinKitThreeBounce(color: Color(0xff7B61FF), size: 30),
            inAsyncCall: BlocProvider.of<SignUpBloc>(context).modalprogresshud,
            child: Scaffold(
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
              body: AuthViewBody(
                textbutton: "Sign Up",
                authtext: "Sign Up",
                onPressed: () async {
                  BlocProvider.of<SignUpBloc>(context)
                      .add(SignUpEvent(email: email, password: password));
                },
                onChangedemail: (value) {
                  email = value;
                },
                onChangedpassword: (value) {
                  password = value;
                },
              ),
            ));
      },
    );
  }
}
