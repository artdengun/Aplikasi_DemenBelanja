import 'package:flutter/material.dart';

// 1 . Kita membuat variable dengan warna yang sudah ditentukan
// warna yang sudah ditentukan ini akan kita gunakan nanti untuk
// pewarnaan atau pemberian warna pada aplikasi yang kita buat sekarang

const kPrimaryColor = Color(0xFFFF7643);
const kPimaryLightColor = Color(0XFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFF979797)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(microseconds: 200);
