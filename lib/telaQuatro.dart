import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 void main(){
  runApp(const MaterialApp (title: "App3",
      home: telaQuatro(),));

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
 class telaQuatro extends StatelessWidget {
 const telaQuatro({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromRGBO(179, 146, 85, 10),
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
          Text('Itanhaém',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(255, 255, 255, 1)
            )),
            Divider(),
            Padding(padding: EdgeInsets.only(top:10)),
           Image(image: AssetImage('img/praia3.png'), ),
           Padding(padding: EdgeInsets.only(top: 40),),
           
           Text('Itanhaém é uma cidade litorânea em São Paulo, famosa por suas praias e rica história, fundada em 1532. Atrai turistas com belezas naturais, como a Praia dos Sonhos, e pontos históricos, como a Igreja Matriz de Sant Anna. O turismo é a principal atividade econômica.',
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
    
    
 
