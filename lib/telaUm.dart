import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sampraia/telaDois.dart';
import 'package:flutter_sampraia/telaTres.dart';
import 'package:flutter_sampraia/telaQuatro.dart';
import 'package:flutter_sampraia/telaCinco.dart';
import 'package:flutter_sampraia/telaSeis.dart';
 void main(){
  runApp(const MaterialApp (title: "App",
      home: telaUm(),
      ),
      );
 }
 
 void _abrirLink1() async{ 
  const url = 'https://www.whatsapp.com/?lang=pt_BR';
 if (await canLaunchUrl(Uri.parse(url)) ) {
  await launchUrl(Uri.parse(url));
 }
 else {
  throw 'Could not launch $url';
 }
 }
  void _onPraiaGrandeTap(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const telaDois()),
    );
  }
  void _onBertiogaTap(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const telaTres()),
    );
  }
  void _onItanhaemTap(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const telaQuatro()),
    );
  }
  void _onPeruibeTap(BuildContext context, String title) {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => const telaCinco()),
    );
  }
  void _onMongaguaTap(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const telaSeis()),
    );
  }
 
 /* void _searchBar(BuildContext context, String title) {

  }*/
class telaUm extends StatelessWidget {
 const telaUm({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
      
      appBar: AppBar(
        
         //title: const Text('Pesquisar...'),
         backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
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
      bottomNavigationBar: BottomAppBar(height: 60, color: const Color.fromRGBO(214, 173, 96, 1) ,
      
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
          children: <Widget>[
        InkWell(
          onTap: (){
            _abrirLink1();
          },
          child: Image.asset('img/whatsapp.png'),
        ),
        //futuramente irá redirecionar á um canal do whatsapp
        Image.asset('img/mapa.png'), //Abrirá o mapa do app
        Image.asset('img/siteUm.png') //redirecionará para o site
      ],),
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
        children: <Widget>[
           ListTile (
      title: const Padding(
      padding: EdgeInsets.only(top: 0, left:10),
      child: Text('Praia Grande',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: const Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/praiaGrande.png'),width: 120, height: 100,),
  ),
  leading: const Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 12), 
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
  onTap: () {
    _onPraiaGrandeTap(context,'PraiaGrande');
  },
),
      //const Padding(padding: EdgeInsets.only(bottom: 30),),
      const Divider(),
          ListTile(
    title: const Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Bertioga', style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: const Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/bertioga.png'), width: 120, height: 100),
  ),
  leading: const Column(
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
  onTap: () {
    _onBertiogaTap(context,'Bertioga');
  },
),
    const Divider(),
        ListTile(
    title: const Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Itanhaém', style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing:  const Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/itanhaem.png'), width: 120, height: 100),
  ),
  leading: const Column(
    mainAxisSize: MainAxisSize.min,
    children:  <Widget>[
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
  onTap: () {
    _onItanhaemTap(context, 'Itanhaem');
  },
),
  const Divider(),
ListTile(
    title: const Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Peruíbe', style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: const Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/peruibe.png'), width: 120, height: 100),
  ),
  leading: const Column(
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
  onTap: () {
    _onPeruibeTap(context, 'Peruibe');
  },
),
const Divider(),

ListTile(
    title: const  Padding(
      padding: EdgeInsets.only( top:0, left:10),
      child: Text('Mongaguá', style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),
      ),
    ),
  trailing: const Padding(
    padding: EdgeInsets.only(left: 0), 
    child: Image(image: AssetImage('img/Mongaguá.png'), width: 120, height: 100),
  ),
  leading: const Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      SizedBox(height: 12), 
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
  onTap: () {
    _onMongaguaTap(context, 'Mongagua');
  },
),
        ],
      ),
      ),
        ],
      ),
      );
}
}