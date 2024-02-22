import 'package:flutter/material.dart';

class MercrediPage extends StatefulWidget {
  const MercrediPage({super.key});

  @override
  State<MercrediPage> createState() => _MercrediPageState();
}

class _MercrediPageState extends State<MercrediPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    label: Text('Mail'),
                    hintText: 'Entrer Votre mail',
                    icon: Icon(Icons.person)),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLength: 8,
                  decoration: const InputDecoration(
                      iconColor: Colors.red,
                      suffix: Text('8'),
                      icon: Icon(Icons.lock),
                      label: Text('Password'),
                      hintText: 'Entrer votre mot de pass'),
                  obscureText: true,
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(66, 9, 86, 73),
                borderRadius: BorderRadius.all(
                  Radius.circular(11),
                ),
              ),
              height: 30,
              width: 300,
              //  color: Colors.red,
              child: const Center(
                child: Text('login'),
              ),
            ),
          ]),
    );
  }
}
