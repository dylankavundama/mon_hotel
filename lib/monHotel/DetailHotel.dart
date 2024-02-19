import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.detail,
      required this.hightScreen,
      required this.titre,
      required this.image,
      required this.widthtScreen});
  final double hightScreen;
  final double widthtScreen;
  final String titre;
  final String detail;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        centerTitle: true,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Mon',
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Text(
                'Hotel',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              Share.share('Voila mon hotel prefererer : $titre,$detail,$image');
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              titre,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: hightScreen * 0.3,
              width: widthtScreen,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              detail,
            ),
          ),
        ],
      ),
    );
  }
}
