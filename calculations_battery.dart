import 'package:flutter/material.dart';

class BatteryCalculation {
  BatteryCalculation(
      {required this.kWh,
      required this.nominalVoltage,
      required this.daysOfAutonomy,
      required this.dod,
      required this.ah});

  final int kWh;
  final int nominalVoltage;
  final double daysOfAutonomy;
  final double dod;
  final int ah;

  double _batteryBank = 0;

  String calculateBattery() {
    _batteryBank =
        (((kWh / nominalVoltage) * daysOfAutonomy * 1.1) / dod / 0.96) * 1000;

    //1.1 is 10% battery derating factor
    //0.96 is 96% inverter losses
    return _batteryBank.toStringAsFixed(1) + ' Ah';
  }

  String topText() {
    return 'Your battery bank size is';
  }

  String bottomText() {
    double noOfBatteries = _batteryBank / ah;
    return 'And you need ' +
        noOfBatteries.toStringAsFixed(1) +
        ' batteries to achieve this';
  }

  String noOfBatteries() {
    double noOfBatteries = _batteryBank / ah;
    return noOfBatteries.toStringAsFixed(1);
  }

  Widget bottomRichText() {
    double noOfBatteries = _batteryBank / ah;
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: 'And you need '),
      TextSpan(
          text: noOfBatteries.toStringAsFixed(1),
          style: TextStyle(color: Colors.white)),
      TextSpan(text: ' batteries to achieve this'),
    ]));
  }
}
