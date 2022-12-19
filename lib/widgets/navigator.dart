import 'package:flutter/material.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/bloody.png"),
            color: Colors.red,
          ),
          label: "Hiến máu",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code_scanner),
          label: "Mã QR",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/icons/person.png"),
          ),
          label: "Tài khoản",
        ),
      ],
    );
  }
}
