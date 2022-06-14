import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  static double checkDouble(dynamic value) {
    if (value is String) {
      return double.parse(value);
    } else if (value == 0) {
      return 0;
    } else {
      return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: (SizeConfig.screenHeight ?? 0) * 0.05),
              Text("OTP Verification", style: headingStyle),
              Text("We sent your code to +1 898 860 ***"),
              buildTimer(),
              SizedBox(height: (SizeConfig.screenHeight ?? 0) * 0.15),
              OtpForm(),
              SizedBox(height: (SizeConfig.screenHeight ?? 0) * 0.1),
              GestureDetector(
                onTap: () {
                  // resend otp code
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30), //allow user 30s
          builder: (context, value, child) => Text(
              "00:${checkDouble(value).toInt()}",
              style: TextStyle(color: kPrimaryColor)),
          onEnd: () {},
        ),
      ],
    );
  }
}
