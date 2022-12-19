import 'package:bloody/models/Emergency.dart';
import 'package:bloody/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';

List<Emergency> lists = [
  Emergency(
    title:
        "Tìm kiếm nhóm máu AB - tại bệnh viện Chợ Rẫy 201B Nguyễn Chí Thanh, Phường 12, Quận 5 ... ",
    description: "Hồ sơ hiến máu của bạn phù hợp với trường hợp này",
    avatar: "assets/images/avatar.png",
    time: "17 phút trước",
  ),
  Emergency(
    title:
        "Tìm kiếm nhóm máu AB - tại bệnh viện Quân Y 175 786 Nguyễn Kiệm, Phường 3, Quận Gò Vấp, TP.HCM ",
    description: "Hồ sơ hiến máu của bạn phù hợp với trường hợp này",
    avatar: "assets/images/avatar.png",
    time: "3 giờ trước",
  ),
];

class Recommended extends StatelessWidget {
  const Recommended({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Đề xuất cho bạn",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          child: Column(
            children: [
              ...List.generate(lists.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              "/details",
                              arguments: EmergencyDetailsArguments(
                                emergency: lists[index],
                              ),
                            );
                          },
                          child: Text(
                            lists[index].title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0xFFFE5C35),
                                  radius: 15,
                                  child: Image.asset(
                                    lists[index].avatar,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: -2,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Image(
                                      image:
                                          AssetImage("assets/icons/check.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              lists[index].description,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          lists[index].time,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFED1A1A),
            minimumSize: const Size(double.infinity, 40),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
          child: const Center(
            child: Text(
              "Xem tất cả",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
