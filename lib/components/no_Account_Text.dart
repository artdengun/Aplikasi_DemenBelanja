import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " Tidak Memiliki Account ? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        Text(
          " Sign Up  ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
