import 'package:flutter/material.dart';
import 'package:test_app/Features/Get%20Started/presentation/widgets/groub_items.dart';
import 'package:test_app/core/utils/background_image.dart';
import 'package:test_app/core/utils/images.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            BackGroundImage(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              padding: const EdgeInsets.only(top: 101),
              imagePath: ImagePath.getstartedImage,
            ),
            const GroubItems()
          ],
        ),
      ],
    );
  }
}
