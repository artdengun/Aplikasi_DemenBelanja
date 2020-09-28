import 'package:desain_awal/components/CUstom_suffix_icons.dart';
import 'package:desain_awal/components/default_button.dart';
import 'package:desain_awal/constants.dart';
import 'package:desain_awal/size_config.dart';
import 'package:flutter/material.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  // untuk validasi
  final _fromKey = GlobalKey<FormState>();
  // untuk menangkap error
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "LOGIN",
            press: () {},
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          setState(() {
            errors.add("Enter Your Email");
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Masukan Password",
        labelText: "PASSWORD",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // agar tulisan email berada di atas label
        suffixIcon: CostumSuffixIcon(
          svgIcon: "assets/icons/smart-house.svg",
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        // membuat tulisan agak menjorok horizontal atau kesamping
        // membuat border menjadi lebih besar kebawah dengan vertical
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          // membuat border menjadi bulat dengan point 28
          borderSide: BorderSide(color: kTextColor),
          // memberikan warna ketika kursos berada di email
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}

class buildEmailFormField extends StatelessWidget {
  const buildEmailFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Masukan Email kamu",
        labelText: "EMAIL",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // agar tulisan email berada di atas label
        suffixIcon: CostumSuffixIcon(
          svgIcon: "assets/icons/email.svg",
        ),

        contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        // membuat tulisan agak menjorok horizontal atau kesamping
        // membuat border menjadi lebih besar kebawah dengan vertical
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          // membuat border menjadi bulat dengan point 28
          borderSide: BorderSide(color: kTextColor),
          // memberikan warna ketika kursos berada di email
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
      ),
    );
  }
}
