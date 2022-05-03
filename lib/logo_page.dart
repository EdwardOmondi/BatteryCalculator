import 'package:bmi_test/first_page.dart';
import 'package:bmi_test/main.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'main.dart';

class LogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kMainTitle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: ACard(
              onPress: () {},
              code: kGoldTile,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    'images/S1.png',
                  )),
                ],
              ),
            ),
          ),
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
