import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("OTP Verification", style: headingStyle),
          Text("We sent your code to +1 898 860 ***"),
          Row(
            children: [
              Text("This code will expired in "),
              TweenAnimationBuilder(
                tween: Tween(begin: 30.0, end: 0),
                duration: Duration(seconds: 30), //allow user 30s
                builder: (context, value, child) => Text("${(value as double)}"),
              ),
            ],
          )
        ],
      ),
    );
  }
}