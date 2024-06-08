
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
       backgroundColor: const Color.fromRGBO(179,146,85, 1),

        body: Center(
          child:Column(
            
            children: <Widget>[ 
              
              TextButton(onPressed: () => {}, child: const Text('Entrar'), )
        ],
          ),
        ),
      ),
    );
  }
}
