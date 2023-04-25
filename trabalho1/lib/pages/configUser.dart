import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/login.page.dart';
import 'package:trabalho1/pages/principal.dart';
class ConfigUser extends StatefulWidget {
  const ConfigUser({super.key});

  @override
  State<ConfigUser> createState() => _ConfigUserState();
}

class _ConfigUserState extends State<ConfigUser> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Conta'),
        backgroundColor: const Color.fromARGB(210, 132, 14, 14),
      ),
      backgroundColor: Color.fromARGB(255, 233, 183, 189),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              
              const SizedBox(height: 10),
        
        
        
                
                
               

         Container(       
          margin: const EdgeInsets.only(right: 00.0, left: 0.0),
          height: 60,
          width: 250,
          child:  TextFormField(
          autofocus: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Alterar Nome:",
            labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
            
            
          ),
          

        ),
          
          ),

                       
                     
      

      const SizedBox(height: 50),
       Container(       
          margin: const EdgeInsets.only(right: 00.0, left: 0.0),
          height: 60,
          width: 250,
          child:  TextFormField(
          autofocus: true,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Alterar Senha:",
            labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
            
            
          ),
          

        ),
          
          ),

           const SizedBox(height: 50),
       Container(       
          margin: const EdgeInsets.only(right: 00.0, left: 0.0),
          height: 60,
          width: 250,
          child:  TextFormField(
          autofocus: true,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Confirmar Senha:",
            labelStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,),
            
            
          ),
          

        ),
          
          ),

        const SizedBox(height: 150),

          SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {

              ScaffoldMessenger.of(context).showSnackBar(
                
                SnackBar(content: Text('Informações alteradas com sucesso!!!',textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15))
                , backgroundColor: Color.fromARGB(255, 151, 119, 120))
                
              
              
              ),

              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => LoginPage(),))

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 151, 119, 120), // cor de fundo
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)), // borda arredondada
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 15),
                Text('Salvar', 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  ),

  const SizedBox(height: 50),
  SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Menu(),))

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 151, 119, 120), // cor de fundo
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)), // borda arredondada
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 15),
                Text('Voltar', 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  ),

            ],
          ),
        ),
      ),
      
    );
  }
}