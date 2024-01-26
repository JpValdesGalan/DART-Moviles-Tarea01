import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea01',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Mc Flutter',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
            height: 200,
            width: 500,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 64,
                    ),
                    Column(
                      children: [
                        Text(
                          "Flutter McFlutter",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Experienced App Developer",
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "123 Main Street",
                    ),
                    Text(
                      "(415) 555-0198",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.accessibility_new),
                    Icon(Icons.timer),
                    Icon(Icons.phone_android_sharp),
                    Icon(Icons.phone_android),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
