import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/Features/Get%20Started/presentation/widgets/custom_button.dart';
import 'package:test_app/core/utils/router.dart';
import 'package:test_app/core/utils/textstyles.dart';

class GroubItems extends StatelessWidget {
  const GroubItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "Running App",
              style: Styles.textStyle30,
            ),
            const SizedBox(height: 10),
            const Text(
              "Run and earn with our app. Some text\n Example will be her",
              style: Styles.textStyle14,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: CoustomBoutton(
                textbutton: "Get Started",
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kRunView);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
