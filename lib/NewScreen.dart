import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  int like = 0;

  void liked() {}

  Widget build(BuildContext context) {
    final Sheight = MediaQuery.of(context).size.height;
    final Wwidght = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Jeudi'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                tooltip: '------------',
                icon: Icon(
                  Icons.thumb_up,
                ),
                onPressed: () {
                  setState(() {
                    like ++;
                  });
                },
              ),
              Text('${like}')
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Icon(Icons.abc),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 100),
              //       child: Icon(Icons.not_accessible),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Icon(Icons.alt_route),
              //     ),
              //   ],
              // ),

              //row
              ,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.green,
                      child: const Icon(Icons.abc),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.green,
                      child: const Icon(Icons.abc),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.red,
                      child: const Icon(Icons.abc),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.blue,
                      child: const Icon(Icons.abc),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.teal,
                      child: const Icon(Icons.abc),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 150,
                      width: 100,
                      color: Colors.red,
                      child: const Icon(Icons.abc),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      // color: Colors.amber,
                      height: Sheight * 0.30,
                      width: Wwidght,
                      child: Image.network(
                          'https://images.pexels.com/photos/17051079/pexels-photo-17051079/free-photo-of-trees-on-sea-shore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    const Divider(
                      //  height: 5,
                      color: Colors.red,
                    ),
                    Container(
                      child: Image.network(
                          'https://images.pexels.com/photos/18916457/pexels-photo-18916457/free-photo-of-birds-eye-view-of-rocks-and-trees-on-sea-shore.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      height: Sheight * 0.30,
                      width: Wwidght,
                    ),
                    Container(
                      color: Colors.orange,
                      height: Sheight * 0.30,
                      width: Wwidght,
                    ),
                    Container(
                      color: Colors.blueAccent,
                      height: Sheight * 0.30,
                      width: Wwidght,
                    ),
                  ],
                ),
              ),
            ]),

          
      ),
    );
  }
}
