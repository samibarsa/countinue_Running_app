// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/Features/Log%20In/pesentation/widgets/coustom_Textform_field.dart';
import 'package:test_app/core/manager/cubit/refresh/refresh_cubit.dart';
import 'package:test_app/core/utils/images.dart';
import 'package:test_app/core/utils/textstyles.dart';

class PassWordFieled extends StatelessWidget {
  const PassWordFieled({super.key, this.onChanged});

  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    bool obscuretext = true;
    return BlocBuilder<RefreshCubit, RefreshState>(
      builder: (context, state) {
        if (state is RefreshSucsess) {
          return CoustomTextFormField(
            onChanged: onChanged,
            obscuretext: obscuretext,
            suffix: GestureDetector(
              onTap: () {
                if (obscuretext == true) {
                  obscuretext = false;
                } else {
                  obscuretext = true;
                }
                // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                BlocProvider.of<RefreshCubit>(context).emit(RefreshSucsess());
              },
              child: SvgPicture.asset(
                ImagePath.hidepassword,
                fit: BoxFit.fill,
              ),
            ),
            hinttext: "Password",
            hintStyle: Styles.textStyle14,
          );
        } else {
          print("object");
        }
        return Text("data");
      },
    );
  }
}
