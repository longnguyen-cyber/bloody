// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations

import 'package:bloody/screens/home_page/emergencies.dart';
import 'package:bloody/screens/home_page/event.dart';
import 'package:bloody/services/custom_decoration.dart';
import 'package:bloody/widgets/header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  final name = "Nguyễn Việt Hoàng";
  final count = 3;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(name: name, count: count),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          Container(
            height: 1600,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              animationDuration: const Duration(milliseconds: 300),
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints(maxHeight: 150.0),
                    child: TabBar(
                      labelColor: Color(0xFFED1A1A),
                      indicator: const CustomTabIndicator(),
                      tabs: const [
                        Tab(
                          text: "Sự kiện",
                        ),
                        Tab(
                          text: "Khẩn cấp",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        EventBlood(),
                        Emergencies(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
