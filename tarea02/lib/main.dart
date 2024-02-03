import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 02',
      // Traté de utilizar ThemeData para los colores pero la verdad me costo mucho trabajo ver como funciona.
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(0, 50, 83, 1),
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(1, 29, 51, 1)),
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        HourlyForecast(),
        DailyForecast(),
      ]),
    );
  }
}

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Text(
            "Hourly forecast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Container(
          height: 150,
          width: 500,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(1, 29, 51, 1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "16°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.nightlight_round,
                        color: Colors.white,
                      ),
                      Text(
                        "Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "14°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.nightlight_round,
                        color: Colors.white,
                      ),
                      Text(
                        "12 AM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "14°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.nightlight_round,
                        color: Colors.white,
                      ),
                      Text(
                        "1 AM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "13°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.nightlight_round,
                        color: Colors.white,
                      ),
                      Text(
                        "2 AM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "11°",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.nightlight_round,
                        color: Colors.white,
                      ),
                      Text(
                        "3 AM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DailyForecast extends StatelessWidget {
  const DailyForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Text(
            "10-day forecast",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              height: 50,
              width: 500,
              margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(1, 29, 51, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Today",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Colors.white,
                        ),
                        Text(
                          "28°/9°",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
