import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:test/detail.dart';
import 'package:test/monHotel/DetailHotel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double hightScreen = MediaQuery.of(context).size.height;
    final double widthtScreen = MediaQuery.of(context).size.width;

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
              String partage =
                  'https://play.google.com/store/apps/details?id=com.cktv';

              //               const lien =
              //     'https://play.google.com/store/apps/details?id=com.cktv';
              // Share.share(
              //     "Ecouter N'hésite pas de telecharger l'application CKTV $lien");

              Share.share(partage);
            },
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          UI_Hotel(
              hightScreen: hightScreen,
              widthtScreen: widthtScreen,
              image: 'image/kivu.jpg',
              titre: 'Kivu Lodge Motel',
              detail:
                  "Explorez l'univers infini des bonnes affaires sur notre plateforme de vente en ligne, où chaque clic vous rapproche d'une expérience shopping exceptionnelle!"),
          UI_Hotel(
            hightScreen: hightScreen,
            widthtScreen: widthtScreen,
            image: 'image/sr.jpg',
            titre: 'Hotel Serena rwanda',
            detail:
                "Specific information about a hotel named Serena in Goma. However, if it is a hotel that has been established or gained prominence after that date, I recommend checking online travel platforms, hotel booking websites, or contacting local tourism offices for the most up-to-date information.",
          ),
          UI_Hotel(
            hightScreen: hightScreen,
            widthtScreen: widthtScreen,
            image: 'image/ihusi.jpg',
            titre: 'Hotel Ihusi',
            detail:
                "if it is a hotel that has been established or gained prominence after that date, I recommend checking online travel platforms, hotel booking websites, or contacting local tourism offices for the most up-to-date information.",
          ),
          UI_Hotel(
            hightScreen: hightScreen,
            widthtScreen: widthtScreen,
            image: 'image/serena.jpg',
            titre: 'Hotel Serena',
            detail:
                "As of my last knowledge update in January 2022, I don't have specific information about a hotel named Serena in Goma. However, if it is a hotel that has been established or gained prominence after that date, I recommend checking online travel platforms, hotel booking websites, or contacting local tourism offices for the most up-to-date information.",
          ),
          UI_Hotel(
            hightScreen: widthtScreen,
            widthtScreen: widthtScreen,
            titre: 'Cap Kivu Hotel',
            detail:
                "directly to inquire about any establishments they might have in Goma. Keep in mind that the information may have changed, and it's always a good idea to verify details closer to your intended travel date.",
            image: 'image/capk.jpg',
          ),
          UI_Hotel(
            hightScreen: hightScreen,
            widthtScreen: widthtScreen,
            titre: "Dieu Exauce Hotel",
            detail:
                "Make sure to check for the latest versions of these packages on pub.dev as version numbers may have changed since my knowledge cutoff in January 2022.",
            image: 'image/dep.jpg',
          )
        ]),
      ),
    );
  }
}

class UI_Hotel extends StatelessWidget {
  const UI_Hotel(
      {super.key,
      required this.hightScreen,
      required this.widthtScreen,
      required this.titre,
      required this.detail,
      required this.image});

  final double hightScreen;
  final double widthtScreen;
  final String titre;
  final String detail;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(
              detail: detail,
              image: image,
              titre: titre,
              hightScreen: hightScreen,
              widthtScreen: widthtScreen,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titre,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Divider(
              color: Colors.black,
            ),
            Text(
              detail,
              maxLines: 3,
            ),
            const SizedBox(height: 3),
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: hightScreen * 0.3,
              width: widthtScreen,
            ),
          ],
        ),
      ),
    );
  }
}
