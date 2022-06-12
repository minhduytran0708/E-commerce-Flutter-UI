import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import '../../components/social_card.dart';
import '../../size_config.dart';
import 'components/sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height:
                      (SizeConfig.screenHeight ?? 0) * 0.02
                  ),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Comlete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  height:
                      (SizeConfig.screenHeight ?? 0) * 0.07 // 7% of total height
                  ),
              SignUpForm(),
              SizedBox(
                  height:
                      (SizeConfig.screenHeight ?? 0) * 0.07
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
