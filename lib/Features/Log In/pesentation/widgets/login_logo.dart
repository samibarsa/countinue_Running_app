import 'package:flutter/material.dart';
import 'package:test_app/core/utils/background_image.dart';
import 'package:test_app/core/utils/images.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BackGroundImage(
          height: 140,
          width: 120,
          imagePath: ImagePath.logo,
          fit: BoxFit.none,
          padding: const EdgeInsets.only(top: 24)),
    );
  }
}
