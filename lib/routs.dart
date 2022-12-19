import 'package:bloody/screens/details/detail_screen.dart';
import 'package:bloody/screens/details/register_screen.dart';
import 'package:bloody/screens/details/success_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  DetailScreen.routeName: (context) => const DetailScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  SuccessScreen.routeName: (context) => const SuccessScreen(),
};
