// ignore_for_file: prefer_const_constructors

import 'package:bloody/screens/home_page/body.dart';
import 'package:bloody/widgets/navigator.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFE5C35),
        body: Body(),
        bottomNavigationBar: CustomNavigator(),
      ),
    );
  }
}
