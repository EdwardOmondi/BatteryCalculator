import 'package:bmi_test/first_page.dart';
import 'package:bmi_test/main.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'main.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
              child: Container(
            color: kGoldTile,
          )),
          Container(
            child: Image.asset(
              'images/S1.png',
            ),
          ),
          Flexible(
              child: Container(
            color: kGoldTile,
          )),
          BigButton(
              text: 'Start',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstPage(),
                  ),
                );
              }),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

class ACard extends StatelessWidget {
  ACard({required this.code, required this.cardChild, required this.onPress});

  final Color code;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: code,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
