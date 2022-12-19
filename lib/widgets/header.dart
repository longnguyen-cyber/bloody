// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.name,
    required this.count,
  }) : super(key: key);

  final String name;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        20,
        20,
        20,
        10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFFFE5C35),
                radius: 25,
                child: Image.asset(
                  "assets/images/avatar.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Xin chào",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      "$name",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Stack(
              children: [
                const Image(
                  image: AssetImage("assets/icons/bell.png"),
                  height: 30,
                  width: 39,
                ),
                Positioned(
                  top: 0,
                  right: 8,
                  child: Container(
                    child: Center(
                      child: Text(
                        "$count",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
