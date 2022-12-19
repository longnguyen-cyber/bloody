// ignore_for_file: prefer_const_constructors

import 'package:bloody/screens/home_page/recommended.dart';
import 'package:flutter/material.dart';

class Emergencies extends StatelessWidget {
  const Emergencies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Recommended(),
        ),
        Divider(
          color: Color(0xFFF2F2F2),
          thickness: 17,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Recommended(),
        ),
      ],
    );
  }
}
