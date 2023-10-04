import 'package:flutter/material.dart';

class CoustomCheckBox extends StatefulWidget {
  const CoustomCheckBox({super.key});

  @override
  State<CoustomCheckBox> createState() => _CoustomCheckBoxState();
}

class _CoustomCheckBoxState extends State<CoustomCheckBox> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Transform.scale(
        scale: 1.3,
        child: Checkbox(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(03)),
          activeColor: const Color(0xff7B61FF),
          value: check,
          onChanged: (value) {
            check = value!;
            setState(() {});
          },
        ),
      ),
    );
  }
}
