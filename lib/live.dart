import 'package:flutter/material.dart';

class livePage extends StatefulWidget {
  const livePage({super.key});

  @override
  State<livePage> createState() => _livePageState();
}

class _livePageState extends State<livePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Live ',
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          actions: []),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            ListView(
              children: const [
                ListTile(
                  title: Text("Let'go"),
                )
              ],
            ),
          ]),
    );
  }
}
