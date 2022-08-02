import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:pie_chart/pie_chart.dart';

class HomePage extends StatefulWidget {
  static const String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String,double> dataMap={
    "Flutter":5,
    "Dart":4,
    "Java":3,
    "Kotlin":2
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox.expand(
        child: Center(
          child: PieChart(dataMap: dataMap,
          animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 35,
            
          ),
        ),
      ),
    );
  }
}
