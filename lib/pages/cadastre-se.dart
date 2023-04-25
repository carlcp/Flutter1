import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/login.page.dart';
class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    title: const Text('AgroAPP'),
    backgroundColor: const Color.fromARGB(210, 132, 14, 14),
    
  ),
    backgroundColor: Color.fromARGB(255, 233, 183, 189),
    body: Padding(
      padding: EdgeInsets.all(30),
      child: Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          autofocus: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Nome",
            labelStyle: TextStyle(color: Colors.white),
            
          ),
        
        ),
        SizedBox(height: 50),
        TextFormField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "E-MAIL",
            labelStyle: TextStyle(color: Colors.white),
            
          ),
        
        ),
        SizedBox(height: 50),
         TextFormField(
          autofocus: true,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Senha",
            labelStyle: TextStyle(color: Colors.white),
            
          ),


          



        ),

        SizedBox(height: 50),
         TextFormField(
          autofocus: true,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "Confirmar Senha",
            labelStyle: TextStyle(color: Colors.white),
            
          ),


          



        ),

        SizedBox(height: 50),

       SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {

              ScaffoldMessenger.of(context).showSnackBar(
                
                SnackBar(content: Text('Confirme seu e-mail !',textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15))
                , backgroundColor: Color.fromARGB(255, 151, 119, 120))
              
              
              ),

              Navigator.pop(context, 
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
                Text('Cadastrar', 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  ),
    SizedBox(height: 50),

       SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {
              Navigator.pop(context, 
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