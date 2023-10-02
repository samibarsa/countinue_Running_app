import 'package:flutter/material.dart';
import 'package:test_app/core/utils/background_image.dart';
import 'package:test_app/core/utils/images.dart';

class BackGroundRunImage extends StatelessWidget {
  const BackGroundRunImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.08, bottom: 24),
        child: BackGroundImage(
          width: MediaQuery.of(context).size.width * 0.84,
          height: MediaQuery.of(context).size.height * 0.29,
          imagePath: ImagePath.runimage,
          fit: BoxFit.none,
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
