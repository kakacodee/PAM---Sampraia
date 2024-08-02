import 'package:flutter/material.dart';
import 'package:flutter_sampraia/telaUm.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            const Positioned.fill(
              child: Image(
                image: AssetImage('img/telainicial.png'),
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 165, top: 300),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(padding:  EdgeInsets.only(bottom: 95)), // Adicionei const ao EdgeInsets.only
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromRGBO(35, 66, 57, 1),
                        textStyle: const TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                        backgroundColor: const Color.fromARGB(255, 229, 185, 103),
                        fixedSize: const Size(280, 90),
                        
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const telaUm()), // Corrigi a chamada para TelaUm
                        );
                      },
                      child: const Text('Entrar'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}