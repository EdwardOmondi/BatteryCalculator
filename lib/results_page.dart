import 'package:bmi_test/main.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.battery, required this.topText, required this.bottomText});

  final battery;
  final topText;
  final bottomText;

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
          /*Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kLargeText,
              ),
            ),
          ),*/
          Expanded(
            flex: 5,
            child: ACard(
              onPress: () {},
              code: kGoldTile,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    topText,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    battery,
                    style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    bottomText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BigButton(
              text: 'Re-Calculate',
              onPressed: () {
                Navigator.pop(context);
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
