import 'package:bmi_calc/constants/constants.dart';
import 'package:bmi_calc/screens/home_screen.dart';
import 'package:bmi_calc/screens/test_scren1.dart';
import 'package:bmi_calc/widgets/background_shape_left.dart';
import 'package:bmi_calc/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'dana'),
        home: HomeScreen());
  }
}
