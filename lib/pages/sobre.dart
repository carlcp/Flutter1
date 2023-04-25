import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({super.key});

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sobre'),
        backgroundColor: const Color.fromARGB(210, 132, 14, 14),
      ),
      backgroundColor: Color.fromARGB(255, 233, 183, 189),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Projeto de um aplicativo sobre o tema de Gados,\n a ideia do aplicativo é ser um e-commerce de gado para todo Brasil. \n Abaixo os desenvolvedores desse APP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),

              SizedBox(height: 60),
       Container(
        color: Color.fromARGB(255, 185, 182, 182),
        child:Row(
                //Alinhar no centro
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [

                 

         Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 250,
          width: 200,
          child: ClipRRect(
                  borderRadius: BorderRadius.circular(90), // define o raio do canto para fazer a borda circular
                  child: Image.asset(
                    'assets/images/blundicaco.jpeg',
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Joao Blundi\t\t',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),
          Container(
          height: 50,
          width: 200,
          child:  Text(
                    'Desenvolvedor de Software',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 146, 102, 102), fontSize: 20,   
                    fontWeight: FontWeight.bold,
                    ),
                      ),
          
          ),
          ]
        
          
        ),

          
                 
      Expanded
      (
        child: Container(
          margin: const EdgeInsets.only(right: 10.0,left: 20, top: 50.0),
          height: 100,
            width: 200,
             child: Text(
              
                      'Ribeirao Preto/SP',
                      style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      ),
                        ),
        
        
                      
        ),
      ),
                  
                        ], 
                      ),
       ),
       SizedBox(height: 60),
       Container(
        color: Color.fromARGB(255, 185, 182, 182),
        child:Row(
                //Alinhar no centro
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [

         Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 250,
          width: 200,
          child: ClipRRect(
                  borderRadius: BorderRadius.circular(90), // define o raio do canto para fazer a borda circular
                  child: Image.asset(
                    'assets/images/eu.jpeg',
                    width: 150,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
          ),           


        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Container(
          margin: const EdgeInsets.only(left: 10.0),
          height: 100,
          width: 200,
          child:  Text(
          
                    'Carlos Castro\t\t',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                    ),
                      ),
          
          ),
          Container(
          height: 50,
          width: 200,
          child:  Text(
                    'Desenvolvedor de Software',
                    style: TextStyle(
                    color:  Color.fromARGB(255, 146, 102, 102), fontSize: 20,   
                    fontWeight: FontWeight.bold,
                    ),
                      ),
          
          ),
          ]
        
          
        ),

          
                 
      Expanded
      (
        child: Container(
          margin: const EdgeInsets.only(right: 10.0,left: 20, top: 50.0),
          height: 100,
            width: 200,
             child: Text(
              
                      'Ribeirao Preto/SP',
                      style: TextStyle(
                      color:  Color.fromARGB(255, 0, 0, 0), fontSize: 20,  
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      ),
                        ),
        
        
                      
        ),
      ),
                  
                        ], 
                      ),
       ),
            ],
          ),
        ),
      ),
    
    );
  }
}