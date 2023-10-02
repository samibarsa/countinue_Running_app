import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/Features/Run/presentation/widgets/back_ground_run_image.dart';
import 'package:test_app/core/utils/router.dart';
import 'package:test_app/core/utils/textstyles.dart';

class RunViewBody extends StatelessWidget {
  const RunViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BackGroundRunImage(),
        // const SliderRun(),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: Styles.textStyle14.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kLogIn);
              },
              child: Text(
                "  LogIn",
                textAlign: TextAlign.center,
                style:
                    Styles.textStyle14.copyWith(color: const Color(0xff7B61FF)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
