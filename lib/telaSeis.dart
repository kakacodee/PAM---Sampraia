import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 void main(){
  runApp(const MaterialApp (title: "App5",
      home: telaSeis(),));

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
 class telaSeis extends StatelessWidget {
 const telaSeis({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(179, 146, 85, 10),
      appBar: AppBar(
         //title: const Text('Pesquisar...'),
        title: Image.asset('img/logo2.png',),
        backgroundColor:const Color.fromRGBO(214, 173, 96, 1),
        
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
      body: const SingleChildScrollView(
        
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: 
        <Widget>[
          Padding(padding: EdgeInsets.only(top: 10, bottom: 20)),
          Text('Mongaguá',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1)
            )),
            Divider(),
            Padding(padding: EdgeInsets.only(top:10)),
           Image(image: AssetImage('img/praia5.png'), ),
           Padding(padding: EdgeInsets.only(top: 40),),
           
           Text('Mongaguá é uma cidade litorânea em São Paulo, conhecida por suas praias e a Plataforma de Pesca. O turismo é a principal atividade econômica, atraindo visitantes para suas belezas naturais e opções de lazer.',
           //textAlign: ,
           style: TextStyle(
            
            backgroundColor: Color.fromRGBO(214, 173, 96, 1),
            fontSize: 17,
            fontWeight: FontWeight.bold,
            
           ),
           
           ),
           Divider(),
           
          Column(children: <Widget>[

            ListTile( 
            trailing: 
            Icon(Icons.thumb_up, size: 50, ),
            title: Text('Recomendada pelos turistas',  style: TextStyle(
            backgroundColor: Color.fromRGBO(214, 173, 96, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
            ),
            contentPadding: EdgeInsets.only(bottom: 15, left: 10),
            ),
            
            ListTile(
              
            trailing:
            Icon(Icons.star, size: 50, ),
            title: Text('Bastante visitada',  style: TextStyle(
            backgroundColor: Color.fromRGBO(214, 173, 96, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,)
            ,),
            contentPadding: EdgeInsets.only(bottom: 15, top: 15, left:10),),
            ListTile(
              
              title: Text('Ondas Calmas e fáceis de pegar',  style: TextStyle(
            backgroundColor: Color.fromRGBO(214, 173, 96, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,),),
             contentPadding: EdgeInsets.only(top:15, left: 10),
              trailing: 
            Icon(Icons.waves, size: 50),
           ),
          ],
          )
        ],
        ),
        
      ),
    );
    
 
 }}