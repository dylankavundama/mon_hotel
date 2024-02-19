import 'package:flutter/material.dart';
import 'package:test/detail.dart';

class mardi extends StatefulWidget {
  const mardi({super.key});

  @override
  State<mardi> createState() => _mardiState();
}

class _mardiState extends State<mardi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer'),
            ),
            ListTile(
              title: Text('Categorie'),
              leading: Icon(Icons.category_outlined),
            ),
            const ListTile(
              title: Text('Menu'),
              leading: Icon(Icons.menu),
            ),
            GestureDetector(
              child: const ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.contact_emergency),
              ),
            ),
            IconButton(
              onPressed: () {},
              tooltip: '---------------------------------------------------',
              icon: Icon(Icons.volcano_sharp),
            )
          ],
        ),
      ),
      appBar: AppBar(),
      body: Column(children: const [
        ListTile(
          title: Text('August MP'),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.5U54JgctlPVerSciD63KsAHaFe?w=233&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
          ),
          subtitle: Text('commnet tu va?'),
          trailing: Text(
            '3',
            style: TextStyle(color: Colors.red),
          ),
        ),
        ListTile(
          title: Text('Victoire ks'),
          leading: CircleAvatar(
            backgroundImage: AssetImage('image/test.jpg'),
          ),
          subtitle: Text('commnet tu va?'),
          trailing: Text(
            '3',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ]),
    );
  }
}
