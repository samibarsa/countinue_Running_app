import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage(
      {super.key,
      required this.height,
      required this.width,
      required this.imagePath,
      required this.fit,
      required this.padding});
  final String imagePath;
  final BoxFit fit;
  final EdgeInsetsGeometry padding;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          width: width,
          imagePath,
          fit: fit,
        ),
      ),
    );
  }
}
