// ignore_for_file: prefer_const_constructors

import 'package:bloody/models/Question.dart';
import 'package:bloody/screens/details/success_screen.dart';
import 'package:bloody/widgets/header.dart';
import 'package:bloody/widgets/navigator.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { yes, no }
//create list have contain object of class

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String routeName = "/register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final name = "Nguyễn Việt Hoàng";
  final count = 3;
  SingingCharacter? _character = SingingCharacter.yes;
  bool valuefirst = false;

  List<Question> questions1 = [
    Question(
        questionText:
            "Sốt rét, Giang mai, Lao, Viêm não, Phẫu thuật ngoại khoa?",
        questionAnswer: false),
    Question(
        questionText: "Được truyền máu và các chế phẩm máu?",
        questionAnswer: false),
    Question(questionText: "Tiêm vacxin bệnh dại", questionAnswer: false),
    Question(questionText: "Không", questionAnswer: false),
  ];
  List<Question> questions2 = [
    Question(
        questionText: "Sút cân nhanh không rõ nguyên nhân",
        questionAnswer: false),
    Question(questionText: "Nổi hạch kéo dài", questionAnswer: false),
    Question(
        questionText: "Xăm mình, xỏ lỗ tai, lỗ mũi", questionAnswer: false),
    Question(questionText: "Sử dụng ma túy?", questionAnswer: false),
    Question(
        questionText:
            "Quan hệ tình dục với người nhiễm HIV hoặc  người có hành vi nguy cơ lấy nhiễm HIV",
        questionAnswer: false),
    Question(
        questionText: "Quan hệ tình dụng với người đồng giớ",
        questionAnswer: false),
    Question(questionText: "Không", questionAnswer: false),
  ];
  List<Question> questions3 = [
    Question(
        questionText:
            "Khỏi bệnh sau khi mắc bệnh viêm đường tiết niệu, viêm da nhiễm trùng, viêm phế quản, viêm phổi, sởi, quai bị, Rubella, Khác",
        questionAnswer: false),
    Question(questionText: "Tiêm vacxin phòng bệnh?", questionAnswer: false),
    Question(
        questionText:
            "Đi vào vùng có dịch bệnh lưu hành(sốt rét, sốt xuất huyết, Zika,...)",
        questionAnswer: false),
    Question(questionText: "Không", questionAnswer: false),
  ];
  List<Question> questions4 = [
    Question(
        questionText: "Bị cảm cúm (ho, nhức đầu, sốt...)?",
        questionAnswer: false),
    Question(
        questionText: "Dùng thuốc kháng sinh, Aspirin, Corticoid?",
        questionAnswer: false),
    Question(
        questionText:
            "Tiêm vacxin phòng Viêm gan siêu vi B, human Papilloma Virus.",
        questionAnswer: false),
    Question(questionText: "Không", questionAnswer: false),
  ];
  List<Question> questions5 = [
    Question(
        questionText: "Hiện có thai, hoặc nuôi con dưới 12 tháng tuổi?",
        questionAnswer: false),
    Question(
        questionText: "DCó kinh nguyệt trong vòng một tuần hay không?",
        questionAnswer: false),
    Question(questionText: "Không", questionAnswer: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFE5C35),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(name: name, count: count),
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                height: 50,
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
                            width: 80,
                          ),
                          const Center(
                            child: Text(
                              "Phiều đăng ký hiến máu",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  formRadio(
                    question: "1. Anh/chị đã từng tham gia hiến máu chưa?",
                    answer1: "Đã từng",
                    answer2: "Chưa từng",
                    height: 160,
                  ),
                  formRadio(
                    question:
                        "2. Hiện tại, anh/chị có bị các bệnh: viêm khớp, dạ dày, viêm gan/vàng da, bệnh tim, huyết áp thấp/cao, hen, ho kéo dài, bệnh máu, lao?",
                    answer1: "Có",
                    answer2: "Không",
                    height: 190,
                  ),
                  formCheckBox(
                    questions: questions1,
                    question:
                        "3. Trong vòng 12 tháng gần đây, anh/chị có mắc các bệnh và đã được điều trị khỏi",
                    height: 320,
                  ),
                  formCheckBox(
                    questions: questions2,
                    question:
                        "4. Trong vòng 06 tháng gần đây, anh/chị có bị một trong số các triệu chứng sau không?",
                    height: 470,
                  ),
                  formCheckBox(
                    questions: questions3,
                    question: "5. Trong 01 tháng gần đây, anh/chị có",
                    height: 320,
                  ),
                  formCheckBox(
                    questions: questions4,
                    question: "6. Trong 07 ngày gần đây anh/chị có",
                    height: 310,
                  ),
                  formCheckBox(
                    questions: questions5,
                    question: "7. Câu hỏi dành cho phụ nữ",
                    height: 260,
                  ),
                  formRadio(
                    question:
                        "8. Anh/chị có đồng ý xét nghiệm HIV, nhận thông báo và được tư vấn khi kết quả xét nghiệm HIV nghi ngờ hoặc dương tính?",
                    answer1: "Đồng ý",
                    answer2: "Không đồng ý",
                    height: 190,
                  ),
                  formRadio(
                    question: "9. Bạn đã tiêm vacxin Covid chưa?",
                    answer1: "Đã tiêm",
                    answer2: "Chưa tiêm",
                    height: 150,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessScreen(),
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
                          "Đăng ký",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomNavigator(),
      ),
    );
  }

  Container formCheckBox(
      {required List<Question> questions,
      required String question,
      required double height}) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFF2F2F2),
            width: 8,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "$question!",
                    maxLines: 4,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(questions.length, (index) {
                  return Row(
                    children: [
                      Checkbox(
                        value: questions[index].questionAnswer,
                        onChanged: (value) {
                          setState(() {
                            questions[index].questionAnswer = value!;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                          side: const BorderSide(width: 2),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          questions[index].questionText,
                          maxLines: 4,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  );
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: valuefirst,
                      onChanged: (value) {
                        setState(() {
                          valuefirst = value!;
                        });
                      },
                    ),
                    Text(
                      "Mục khác:",
                      maxLines: 4,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Container(
                      height: 40,
                      width: 180,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       //loop questions1 to check if any question is true
            //       for (var i = 0; i < questions1.length; i++) {
            //         if (questions1[i].questionAnswer == true) {
            //           print(questions1[i].questionText);
            //         }
            //       }
            //     },
            //     child: Text("Tiếp tục"))
          ],
        ),
      ),
    );
  }

  Container formRadio(
      {String? question,
      String? answer1,
      String? answer2,
      required double height}) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFF2F2F2),
            width: 8,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    question!,
                    maxLines: 4,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio<SingingCharacter>(
                      value: SingingCharacter.yes,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    Text(
                      answer1!,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<SingingCharacter>(
                      value: SingingCharacter.no,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    Text(
                      answer2!,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
