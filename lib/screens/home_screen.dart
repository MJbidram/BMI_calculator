import 'package:bmi_calc/widgets/background_shape_left.dart';
import 'package:bmi_calc/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightControler = TextEditingController();
  final heightControler = TextEditingController();
  double resultBMI = 0;
  String resultText = '';

  double badweight = 100;
  double goodweight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'تو چنده ؟ BMI',
          style: TextStyle(color: balck),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  child: Text(
                    ': وزن ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 130,
                  child: Text(
                    ': قد ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130.0,
                  child: TextField(
                    controller: weightControler,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: redBackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '80',
                      hintStyle: TextStyle(
                        color: redBackground.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130.0,
                  child: TextField(
                    controller: heightControler,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: redBackground,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '1.78',
                      hintStyle: TextStyle(
                        color: redBackground.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightControler.text);
                final height = double.parse(heightControler.text);

                setState(() {
                  resultBMI = weight / (height * height);

                  if (resultBMI > 25) {
                    badweight = 250;
                    goodweight = 50;
                    resultText = 'شما اضافه وزن دارید';
                  } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                    resultText = 'وزن شما نرمال است';
                    badweight = 50;
                    goodweight = 250;
                  } else {
                    resultText = 'وزن شما کم تر از حد نرمال است';
                    badweight = 50;
                    goodweight = 50;
                  }
                });
                print(weightControler.text);
                print(heightControler.text);
              },
              child: Text(
                '! محاسبه کن',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
            SizedBox(
              height: 28.0,
            ),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: balck,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              '$resultText',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: redBackground),
            ),
            SizedBox(
              height: 32.0,
            ),
            LeftShape(
              width: goodweight,
            ),
            SizedBox(
              height: 16.0,
            ),
            RightShape(
              width: badweight,
            )
          ],
        ),
      ),
    );
  }
}
