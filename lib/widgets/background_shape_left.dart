import 'package:bmi_calc/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            color: greenBackground,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
