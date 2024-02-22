import 'package:flutter/material.dart';

class AidePage extends StatefulWidget {
  const AidePage({super.key});

  @override
  State<AidePage> createState() => _AidePageState();
}

class _AidePageState extends State<AidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                  "La poésie. Genre littéraire associé à la versification et soumis à des règles prosodiques particulières, variables selon les cultures et les époques, mais tendant toujours à mettre en valeur le rythme, l'harmonie et les images."),
            ),
          ]),
    );
  }
}
