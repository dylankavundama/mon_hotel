import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void _makePhoneCall(String phoneNumber) async {
    final Uri phoneCallUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunch(phoneCallUri.toString())) {
      await launch(phoneCallUri.toString());
    } else {
      throw 'Could not launch $phoneCallUri';
    }
  }

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
          TextButton(
            child: const Text('Faite une reservation'),
            onPressed: () {
              String url =
                  "https://wa.me/+243854344433/?text=Salut,J'aimerai reserver a lhotel ${titre} ";
              // ignore: deprecated_member_use
              launch(url);
            },
          ),
          TextButton(
              child: Text('appeler'),
              onPressed: () {
                // ignore: deprecated_member_use
                launch('tel:0977734735');
              })
        ],
      ),
    );
  }
}
