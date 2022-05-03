import 'package:bmi_test/logo_page.dart';
import 'package:flutter/material.dart';
import 'logo_page.dart';

const kGoldTile = Color(0xfff5b700);
const kBackgroundColor = Color(0xff202020);
const kMyTextColour = Color(0xff101010);
const kSelectedGold = Color(0xffa08800);
const kSelectedGold2 = Color(0x50ccad00);
//const kSelectedGreen = Color(0xff106030);

const kNormalText = TextStyle(
  fontSize: 19.0,
);

const kLargeText = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w300,
);
const kBottomContainerHeight = 60.0;
const kSizedBox = 10.0;

const kMainTitle = 'Battery Calculator';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SolarOn',
      theme: ThemeData(
        fontFamily: 'Sifonn',
        textTheme: TextTheme(
          headline1: TextStyle(
            color: kMyTextColour,
          ),
          bodyText1: TextStyle(
            color: kMyTextColour,
          ),
          bodyText2: TextStyle(
            color: kMyTextColour,
          ),
        ),
        primaryColor: kBackgroundColor,
        accentColor: kMyTextColour,
        primaryColorDark: Color(0xff000000),
        scaffoldBackgroundColor: kBackgroundColor,
        buttonColor: kMyTextColour,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: kMyTextColour,
        ),
      ),
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      home: LogoPage(),
    );
  }
}
