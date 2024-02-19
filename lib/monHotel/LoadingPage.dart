import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/monHotel/HomePage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), PageSuivante);
  }

  // ignore: non_constant_identifier_names
  void PageSuivante() {
    Navigator.pushAndRemoveUntil(
      context,
      CupertinoPageRoute(
        builder: (context) => const HomePage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              children: const [
                Text(
                  'Mon',
                  style: TextStyle(color: Colors.red, fontSize: 50),
                ),
                Text(
                  'Hotel',
                  style: TextStyle(color: Colors.blue, fontSize: 50),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.hotel,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
