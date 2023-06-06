import 'dart:html';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/login.page.dart';
import '../controller/login_controller.dart';

class recuperarSenha extends StatefulWidget {
  const recuperarSenha({Key? key}) : super(key: key);

  @override
  State<recuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<recuperarSenha> {
  var txtEmailEsqueceuSenha = TextEditingController();

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
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: txtEmailEsqueceuSenha,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "E-MAIL",
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 420,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => {

                   LoginController().esqueceuSenha(
                                context,
                                txtEmailEsqueceuSenha.text,
                              )
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 151, 119, 120), // cor de fundo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ), // borda arredondada
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 15),
                      Text(
                        'Enviar',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100),
              SizedBox(
                width: 420,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.pop(context, 
                    MaterialPageRoute(builder: (context) => LoginPage(),))
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color.fromARGB(255, 151, 119, 120), // cor de fundo
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ), // borda arredondada
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 15),
                      Text(
                        'Voltar',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
