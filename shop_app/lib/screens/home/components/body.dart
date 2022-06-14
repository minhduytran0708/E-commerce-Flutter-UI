import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'section_title.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(children: [
        SizedBox(height: getProportionateScreenWidth(20)),
        HomeHeader(),
        SizedBox(height: getProportionateScreenWidth(30)),
        DiscountBanner(),
        SizedBox(height: getProportionateScreenWidth(30)),
        Categories(),
        SizedBox(height: getProportionateScreenWidth(30)),
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/Image Banner 2.png",
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ]
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "Smartphone\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          )
                        ),
                        TextSpan(
                          text: "18 Brands",
                        ),
                      ]
                    )
                  ),
                )
            ]),
          ),
        )
      ])),
    );
  }
}
