import 'package:flutter/material.dart';

class CoustomDivider extends StatelessWidget {
  const CoustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // ...
        Expanded(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Divider(
                indent: 24,
                endIndent: 22,
                color: Color(0xff4B576B),
                thickness: 0.7,
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Or continue with",
            style: TextStyle(
                fontFamily: "popins",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff4B576B)),
          ),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Divider(
                indent: 24,
                endIndent: 22,
                color: Color(0xff4B576B),
                thickness: 0.7,
              )
            ],
          ),
        )
      ],
    );
  }
}
