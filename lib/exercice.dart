import 'package:flutter/material.dart';
import 'package:test/NewScreen.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  bool a = false;

  void val(bool b) {
    setState(() {
      a = b;
    });
  }

  Widget build(BuildContext context) {
    bool a = false;

    void test(bool b) {
      a = b;
    }

    return Scaffold(
        appBar: AppBar(actions: const [Icon(Icons.menu)]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Radio(
                onChanged: (value) => test,
                value: a,
                groupValue: a,
              ),
            ),
            const SizedBox(
              height: 30,
              child: Text('salut ça va?'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 0, right: 30),
              child: IconButton(
                icon: (const Icon(Icons.call)),
                onPressed: () {},
                tooltip: 'passer un appel',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NewScreen(),
                  ),
                );
              },
              child: const Text('Next Page'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          highlightElevation: 5,
          tooltip: 'dhgegdcttyvnvyut',
          child: const Icon(Icons.message),
        ));
  }
}
