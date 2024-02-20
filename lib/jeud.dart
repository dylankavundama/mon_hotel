import 'package:flutter/material.dart';
import 'package:test/detail.dart';
import 'package:test/mardi.dart';
import 'package:test/mercredi.dart';

class JeudiClass extends StatefulWidget {
  const JeudiClass({super.key});

  @override
  State<JeudiClass> createState() => _JeudiClassState();
}

class _JeudiClassState extends State<JeudiClass> {
  int indeCurrent = 0;
  List<Widget> Page = [
    const mardi(),
    const detailPage(),
    const MercrediPage(),
  ];


  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Page[indeCurrent],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.orange,
          onTap: (index) {
            setState(() {
              indeCurrent = index;
            });
          },
          currentIndex: indeCurrent,
          items: const [
            BottomNavigationBarItem(
              tooltip: 'Acceuil',
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Categorie',
              icon: Icon(Icons.category),
            ),
            BottomNavigationBarItem(
              label: 'Detail',
              icon: Icon(Icons.info),
            ),
          ],
        ));
  }
}
