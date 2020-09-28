import 'package:desain_awal/screens/Sign_in/sign_in.dart';
import 'package:desain_awal/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// we use name route
// All our routes will be availble here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  // lanjut ke body.dart di component screen #2 
  SignInScreen.routeName: (context) => SignInScreen(),
};
