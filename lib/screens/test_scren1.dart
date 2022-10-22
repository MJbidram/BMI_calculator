import 'package:bmi_calc/constants/constants.dart';
import 'package:flutter/material.dart';

class Testscreen extends StatefulWidget {
  const Testscreen({super.key});

  @override
  State<Testscreen> createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
  int cont = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  '$cont',
                  style: TextStyle(fontSize: 32.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cont++;
                    });
                  },
                  child: Text(
                    'click',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        cont++;
                      });
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Text('Hello world'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
