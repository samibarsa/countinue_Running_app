import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:test_app/Features/Sign%20Up/manager/bloc/SignUp/sign_up_bloc.dart';
import 'package:test_app/Features/Sign%20Up/pesentation/widgets/sign_up_view_body.dart';
import 'package:test_app/core/utils/constant.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
              body: SignUpViewBody(),
            ));
      },
    );
  }
}
/*
              ) */