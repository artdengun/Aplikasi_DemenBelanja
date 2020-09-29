import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../sign_Form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              Text(
                " WELCOME BACK ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Silahkan Masuk dengan email kamu and password \n atau menggunakan social media",
                textAlign: TextAlign.center,
              ),
              SignForm(),
              Container(
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9), shape: BoxShape.circle, ),

                    child: SvgPicture.asset("assetName"),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
