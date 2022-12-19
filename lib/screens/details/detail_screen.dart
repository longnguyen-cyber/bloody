// ignore_for_file: prefer_const_constructors

import 'package:bloody/models/Emergency.dart';
import 'package:bloody/screens/details/register_screen.dart';
import 'package:bloody/widgets/header.dart';
import 'package:bloody/widgets/navigator.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static String routeName = "/details";

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final name = "Nguyễn Việt Hoàng";
  final count = 3;

  @override
  Widget build(BuildContext context) {
    final EmergencyDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as EmergencyDetailsArguments;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFE5C35),
        body: Column(
          children: [
            Header(name: name, count: count),
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Container(
              height: 370,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Center(
                          child: Text(
                            "Thông tin chi tiết",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Nhu cầu: ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Nhóm máu AB, 3 đơn vị",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Địa điểm: ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
                            maxLines: 2,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Liên hệ: ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "0982 001 737 (Mai Hoàng)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Mô tả: ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "\u2022",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                "Bác XXX XXX sinh 19xx. Hiện đang điều trị tại BV Đa Khoa Thủ Đức (BV Việt Thắng) Khoa Hồi sức tích cực trong tình trạng viêm phổi, suy gan, thận, chảy máu không cầm được.",
                                maxLines: 4,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "\u2022",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                "Hiến sáng mai 10/10 tại BV Truyền máu huyết học. Yêu cầu: Nhóm máu AB, trên 50kg và sức khỏe tốt",
                                maxLines: 4,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 10,
              thickness: 10,
              color: Color(0xFFF2F2F2),
            ),
            Container(
              height: 216,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/ggmap.png",
                      height: 140,
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFED1A1A),
                        minimumSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Tiếp theo",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: const CustomNavigator(),
      ),
    );
  }
}

class EmergencyDetailsArguments {
  final Emergency emergency;

  EmergencyDetailsArguments({required this.emergency});
}
