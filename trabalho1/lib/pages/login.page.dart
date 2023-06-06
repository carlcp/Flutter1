import 'dart:html';

import 'package:trabalho1/pages/cadastre-se.dart';
import 'package:trabalho1/pages/login.page.dart';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/principal.dart';
import 'package:trabalho1/pages/reset_passowrd.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  
const LoginPage({super.key});

@override
State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();


@override
Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    title: const Text('AgroAPP'),
    backgroundColor: Color.fromARGB(210, 132, 14, 14),
    
  ),
    backgroundColor: Color.fromARGB(255, 233, 183, 189),
    body: Padding(
      padding: EdgeInsets.all(30),
      child: Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

       //Logo da loja
       Container(
        height: 200,
        width: 200,
        child: Image.asset('assets/images/vaca.png'),
        
       ),
       
        SizedBox(height: 40),
        TextFormField(
          controller: txtEmail,
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          style: new TextStyle(color: Colors.white, fontSize: 20),
          decoration: InputDecoration(
            labelText: "E-MAIL",
            labelStyle: TextStyle(color: Colors.white),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          )),
          ),
        
        ),
        SizedBox(height: 100),
         TextFormField(
          controller: txtSenha,
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
        Row(
              //Alinhar na lateral direita
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               InkWell(
                child: const Text(
                 'Esqueceu a senha?',
                  style: TextStyle(
                
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                  color:  Color.fromARGB(255, 255, 254, 254), fontSize: 20,
                  
                  ),
                   ),
                  

                  //Ao clicar, ir para tela de Esqueci a senha
                  onTap: (){
                    //Mover para a tela de recuperar
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const recuperarSenha()),
                  );
                  },
               )
                     ], 
                    ),
        SizedBox(height: 50),

       SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: () => {


              LoginController().login(
                  context,
                  txtEmail.text,
                  txtSenha.text,
                ),

            

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
                Text('Entrar', 
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
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => CadastroPage(),))
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
                Text('Cadastre-se', 
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