import 'package:bmi_calculate_praktikum/input_page.dart';
import 'package:flutter/material.dart';

void main() =>runApp(BMIcalculator());


class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21)),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

