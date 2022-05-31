import 'package:bmi_test/main.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.battery, required this.topText, required this.bottomText});

  final String battery;
  final String topText;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: kGoldTile,
        ),
        elevation: 0,
        backgroundColor: kBackgroundColor,
      ),
      body: Column(
        children: [
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              topText,
              style: TextStyle(fontSize: 30.0, color: kGoldTile),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              battery,
              style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'And ',
                style: TextStyle(
                  fontSize: 30,
                  color: kGoldTile,
                  fontFamily: 'Sifonn',
                ),
              ),
              TextSpan(
                  text: bottomText + ' batteries',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sifonn',
                    fontSize: 40,
                  )),
              TextSpan(
                text: ' are needed to achieve this',
                style: TextStyle(
                  fontSize: 30,
                  color: kGoldTile,
                  fontFamily: 'Sifonn',
                ),
              ),
            ])),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text(
          //     bottomText,
          //     textAlign: TextAlign.left,
          //     style: TextStyle(fontSize: 30.0, color: kGoldTile),
          //   ),
          // ),
          Expanded(child: Container()),
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
