// ignore_for_file: prefer_const_constructors

import 'package:bloody/widgets/navigator.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/success";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/register_success.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 26,
                ),
                Text(
                  "Đăng ký thành công",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/icons/ticket.png",
                  height: 173,
                  width: 173,
                ),
                SizedBox(
                  height: 50,
                ),
                Text.rich(
                  TextSpan(
                    text: "Hiến máu khẩn cấp ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFED1A1A),
                    ),
                    children: const [
                      TextSpan(
                        text: "nhóm máu AB",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Bệnh viện Chợ Rẫy",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 330,
                  child: Text(
                    "201B Nguyễn Chí Thanh, Phường 12, Quận 5, TP.HCM",
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 7,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    "assets/images/ggmap.png",
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Container(
                  width: double.infinity,
                  //fit height to screen
                  height: 34,

                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 2,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      "Chúng tôi sẽ sớm liên hệ bạn",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigator(),
      ),
    );
  }
}
