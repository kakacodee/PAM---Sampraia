import 'package:flutter/material.dart';

 void main(){
  runApp(const MaterialApp (title: "App",
      home: telaUm(),));
 }
class telaUm extends StatelessWidget {
 const telaUm({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
      appBar: AppBar(
         //title: const Text('Pesquisar...'),
         title:
         TextFormField(
          decoration: const InputDecoration(
             border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide.none, // Remover a borda padrão
            ),
            
            filled: true, 
            fillColor: Color.fromRGBO(244, 235, 208, 30), 
            contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
            
            icon:  Icon(
          Icons.search,
          ),
          hintText: ('Pesquisar...'),
          
         ), 
         ),
        
      ),
      body: Column(
        children: [
          const Padding(
            padding:  EdgeInsets.all(8),
            child: Text(
              'Praias',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(),
      Expanded( child: ListView(
        children: const <Widget>[
           ListTile (
      title: Padding(
      padding: EdgeInsets.only(top: 0, left:10),
      child: Text('Praia Grande',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/praiaGrande.png'),width: 120, height: 100,),
  ),
  leading: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 12), // Ajuste esta altura conforme necessário
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.thumb_up, size: 35),
          Icon(Icons.star, size: 35),
          Icon(Icons.waves, size: 35),
        ],
      ),
    ],
  ),
),
      Padding(padding: EdgeInsets.only(bottom: 30),),
      Divider(),
          ListTile(
    title: Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Bertioga', style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/bertioga.png'), width: 120, height: 100),
  ),
  leading: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 12), // Ajuste esta altura conforme necessário
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         Icon(Icons.thumb_up, size: 35),
          Icon(Icons.star, size: 35),
          Icon(Icons.waves, size: 35),
        ],
      ),
    ],
  ),
),
Divider(),
        ListTile(
    title: Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Itanhaem', style: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/itanhaem.png'), width: 120, height: 100),
  ),
  leading: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 12), // Ajuste esta altura conforme necessário
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         Icon(Icons.thumb_up, size: 35),
          Icon(Icons.star, size: 35),
          Icon(Icons.waves, size: 35),
        ],
      ),
    ],
  ),
),
Divider(),
ListTile(
    title: Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Peruíbe', style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/peruibe.png'), width: 120, height: 100),
  ),
  leading: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 12), // Ajuste esta altura conforme necessário
      Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         Icon(Icons.thumb_up, size: 35),
          Icon(Icons.star, size: 35),
          Icon(Icons.waves, size: 35),
        ],
      ),
    ],
  ),
),
        ],
      ),
      ),
        ],
      ),
      );
}
}