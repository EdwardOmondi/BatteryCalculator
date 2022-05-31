import 'package:bmi_test/main.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'main.dart';

class FirstPage extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to the battery calculator for your inverter/UPS\n'
                  'Important points to note before you begin calculating the number of batteries:',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: kGoldTile,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '1. Daily kWh usage is the amount of energy used per day. It can be found on your power bill.\n\n'
                  '2. Nominal voltage is the DC input voltage of your inverter or UPS.\n\n'
                  '3. Days of autonomy is the no. of days you want the batteries to power your devices.\n\n'
                  '4. Depth of discharge is the amount by which you want the batteries to be drawn (the greater the value, the worse it is for your battery in terms of battery life).\n\n'
                  '5. Battery size is the rating of the battery in Ah. It can be found in the battery manual/brochure',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: kGoldTile,
                  ),
                ),
              ),
            ],
          )),
          BigButton(
              text: 'Begin Calculation',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: kMainTitle),
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
