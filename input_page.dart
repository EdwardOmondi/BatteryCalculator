import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'results_page.dart';
import 'calculations_battery.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int nominalVoltage = 24;
  double daysOfAutonomy = 1.0;
  int kWh = 20;
  int hours = 24;
  double factorOfSafety = 1;
  double dod = 0.5;
  int batterySize = 200;

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
        children: [
          ACard(
            code: kGoldTile,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Daily kWh Usage',
                  style: kNormalText,
                ),
                SizedBox(
                  height: kSizedBox,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      kWh.toString(),
                      style: kLargeText,
                    ),
                    Text(
                      'kWh',
                      style: kNormalText,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: kMyTextColour,
                    inactiveTrackColor: kSelectedGold,
                    thumbColor: kMyTextColour,
                    overlayColor: kSelectedGold2,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 8,
                    ),
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 16,
                    ),
                  ),
                  child: Slider(
                      value: kWh.toDouble(),
                      min: 5,
                      max: 100,
                      onChanged: (double newValue) {
                        setState(() {
                          kWh = newValue.toInt();
                        });
                      }),
                ),
              ],
            ),
          ), //First row //Daily kWh Usage
          SizedBox(
            height: 175,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ACard(
                  code: kGoldTile,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nominal Voltage (V)',
                        style: kNormalText,
                      ),
                      SizedBox(
                        height: kSizedBox,
                      ),
                      Text(
                        nominalVoltage.toString(),
                        style: kLargeText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AButton(
                            onPressed: () {
                              setState(() {
                                nominalVoltage = nominalVoltage + 6;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: kSizedBox,
                          ),
                          AButton(
                            onPressed: () {
                              setState(() {
                                nominalVoltage = nominalVoltage - 6;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ],
                  ),
                ), //Nominal Voltage
                ACard(
                  code: kGoldTile,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Days of autonomy',
                        style: kNormalText,
                      ),
                      SizedBox(
                        height: kSizedBox,
                      ),
                      Text(
                        daysOfAutonomy.toStringAsFixed(1),
                        style: kLargeText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AButton(
                            onPressed: () {
                              setState(() {
                                daysOfAutonomy = daysOfAutonomy + 0.1;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: kSizedBox,
                          ),
                          AButton(
                            onPressed: () {
                              setState(() {
                                daysOfAutonomy = daysOfAutonomy - 0.1;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ],
                  ),
                ), //Days of Autonomy
                ACard(
                  code: kGoldTile,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Depth of discharge',
                        style: kNormalText,
                      ),
                      SizedBox(
                        height: kSizedBox,
                      ),
                      Text(
                        dod.toStringAsFixed(1),
                        style: kLargeText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AButton(
                            onPressed: () {
                              setState(() {
                                dod = dod + 0.1;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: kSizedBox,
                          ),
                          AButton(
                            onPressed: () {
                              setState(() {
                                dod = dod - 0.1;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ],
                  ),
                ), //Batttery DOD
              ],
            ),
          ), //Second row
          SizedBox(
            height: 175,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ACard(
                  code: kGoldTile,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back up Time (hrs)',
                        style: kNormalText,
                      ),
                      SizedBox(
                        height: kSizedBox,
                      ),
                      Text(
                        hours.toString(),
                        style: kLargeText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AButton(
                            onPressed: () {
                              setState(() {
                                hours++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: kSizedBox,
                          ),
                          AButton(
                            onPressed: () {
                              setState(() {
                                hours--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ACard(
                  code: kGoldTile,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Factor of safety',
                        style: kNormalText,
                      ),
                      SizedBox(
                        height: kSizedBox,
                      ),
                      Text(
                        factorOfSafety.toStringAsFixed(1),
                        style: kLargeText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AButton(
                            onPressed: () {
                              setState(() {
                                factorOfSafety = factorOfSafety + 0.100;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                          ),
                          SizedBox(
                            width: kSizedBox,
                          ),
                          AButton(
                            onPressed: () {
                              setState(() {
                                factorOfSafety = factorOfSafety - 0.100;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ACard(
            code: kGoldTile,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Battery Size',
                  style: kNormalText,
                ),
                SizedBox(
                  height: kSizedBox,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      batterySize.toString(),
                      style: kLargeText,
                    ),
                    Text(
                      'Ah',
                      style: kNormalText,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: kMyTextColour,
                    inactiveTrackColor: kSelectedGold,
                    thumbColor: kMyTextColour,
                    overlayColor: kSelectedGold2,
                    thumbShape: RoundSliderThumbShape(
                      enabledThumbRadius: 8,
                    ),
                    overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 16,
                    ),
                  ),
                  child: Slider(
                      value: batterySize.toDouble(),
                      min: 100,
                      max: 500,
                      onChanged: (double newValue) {
                        setState(() {
                          batterySize = newValue.toInt();
                        });
                      }),
                ),
              ],
            ),
          ),
          Expanded(child: Container()), //Third row
          BigButton(
            text: 'Submit',
            onPressed: () {
              BatteryCalculation calculation = BatteryCalculation(
                  kWh: kWh,
                  nominalVoltage: nominalVoltage,
                  daysOfAutonomy: daysOfAutonomy,
                  dod: dod,
                  ah: batterySize);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    battery: calculation.calculateBattery(),
                    topText: calculation.topText(),
                    bottomText: calculation.noOfBatteries(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ACard extends StatelessWidget {
  ACard({
    required this.code,
    required this.cardChild,
  });

  final Color code;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, bottom: 15, right: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: cardChild,
        ),
        decoration: BoxDecoration(
          color: code,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class AButton extends StatelessWidget {
  const AButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: FaIcon(
        icon,
        color: kGoldTile,
        size: 20,
      ),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      shape: CircleBorder(),
      fillColor: kMyTextColour,
    );
  }
}

class BigButton extends StatelessWidget {
  const BigButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        text,
        style: TextStyle(
          color: kMyTextColour,
          fontSize: 30,
        ),
      ),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width,
        height: kBottomContainerHeight + 5,
      ),
      shape: RoundedRectangleBorder(
        //borderRadius: BorderRadius.circular(kBottomContainerHeight + 5 / 2),
        borderRadius: BorderRadius.circular(0),
      ),
      fillColor: kGoldTile,
    );
  }
}
/*Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ACard(
                    onPress: () {
                      print('Domestic');
                      setState(() {
                        changeTileColor(InstallationType.domestic);
                      });
                    },
                    code: domesticColour,
                    cardChild: CardContent1(
                      icon: FontAwesomeIcons.home,
                      text: 'Domestic',
                    ),
                  ),
                ), //Domestic tile
                Expanded(
                  child: ACard(
                    onPress: () {
                      print('Commercial');
                      setState(() {
                        changeTileColor(InstallationType.commercial);
                      });
                    },
                    code: commercialColour,
                    cardChild: CardContent1(
                      icon: FontAwesomeIcons.building,
                      text: 'Commercial',
                    ),
                  ),
                ), //Commercial tile
                Expanded(
                  child: ACard(
                    onPress: () {
                      print('Industrial');
                      setState(() {
                        changeTileColor(InstallationType.industrial);
                      });
                    },
                    code: industrialColour,
                    cardChild: CardContent1(
                      icon: FontAwesomeIcons.industry,
                      text: 'Industrial',
                    ),
                  ),
                ), //Industrial Tile
              ],
            ),
          ),*/
/*void changeTileColor(InstallationType selection) {
    // i=1 is domestic,i=2 is commercial, i=3 is industrial
    if (selection == InstallationType.domestic) {
      if (domesticColour != kSelectedGreen) {
        domesticColour = kSelectedGreen;
        commercialColour = kGoldTile;
        industrialColour = kGoldTile;
      } else
        domesticColour = kGoldTile;
    }
    if (selection == InstallationType.commercial) {
      if (commercialColour != kSelectedGreen) {
        domesticColour = kGoldTile;
        commercialColour = kSelectedGreen;
        industrialColour = kGoldTile;
      } else
        commercialColour = kGoldTile;
    }
    if (selection == InstallationType.industrial) {
      if (industrialColour != kSelectedGreen) {
        domesticColour = kGoldTile;
        commercialColour = kGoldTile;
        industrialColour = kSelectedGreen;
      } else
        industrialColour = kGoldTile;
    }
  }*/
/*Color domesticColour = kGoldTile;
  Color commercialColour = kGoldTile;
  Color industrialColour = kGoldTile;*/
/*enum InstallationType {
  domestic,
  commercial,
  industrial,
}*/
