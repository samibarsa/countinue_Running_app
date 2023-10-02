import 'package:flutter/material.dart';
import 'package:test_app/Features/Run/presentation/widgets/onboarding.dart';

class SliderRun extends StatelessWidget {
  const SliderRun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.83,
          height: MediaQuery.of(context).size.height * 0.375,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              color: const Color(0xff495463)),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.373,
            width: MediaQuery.of(context).size.width * 0.82,
            child: const OnBoardingPage())
      ],
    );
  }
}
