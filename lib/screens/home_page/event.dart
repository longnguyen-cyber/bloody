// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bloody/models/Article.dart';
import 'package:bloody/screens/home_page/address.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class EventBlood extends StatefulWidget {
  EventBlood({Key? key}) : super(key: key);

  @override
  State<EventBlood> createState() => _EventBloodState();
}

class _EventBloodState extends State<EventBlood> {
  late CarouselController controller;
  @override
  void initState() {
    super.initState();
    controller = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Search(),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            DropdownProvices(),
            SizedBox(
              width: 40,
            ),
            DropdownProvices(),
            SizedBox(
              width: 40,
            ),
            DropdownProvices(),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 5,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: Text(
                "Bệnh viện Quân Y 175",
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: Text(
                "Gần tôi nhất",
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: Text(
                "... Xem thêm",
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CarouselSlider.builder(
          carouselController: controller,
          itemCount: 10,
          itemBuilder: ((context, index, realIndex) => Container(
                margin: const EdgeInsets.all(5),
                child: eventBanner(),
              )),
          options: CarouselOptions(
            height: 198,
            viewportFraction: 1,
            initialPage: 0,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                controller.previousPage();
              },
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                controller.nextPage();
              },
              child: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFFE5C35),
            borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Các hoạt động hiến máu nhân đạo",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Column(
          children: [
            ...List.generate(listsBao.length, (index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(listsBao[index].image),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      listsBao[index].title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              );
            })
          ],
        )
      ],
    );
  }

  Padding eventBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(1, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/image1.png",
                    width: 100,
                    height: 100,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Trung tâm truyền máu Chợ Rấy",
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_location_outlined,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Expanded(
                              child: Text(
                                "Cổng số 5, đường Phạm Hữu Chí, phường 12, quận 5, TP.HCM",
                                maxLines: 2,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "25/10/2022",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFED1A1A),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Tham gia",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    String search = "";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: TextField(
        onChanged: (value) {
          setState(() {
            search = value;
          });
        },
        decoration: InputDecoration(
          hintText: "Tìm kiếm sự kiện hiến máu",
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          filled: true,
          fillColor: Color(0xFFF2F2F2),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
