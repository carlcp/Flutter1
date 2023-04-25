import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/UsuarioConsulta.dart';
import 'package:trabalho1/pages/cadastroUsuario.dart';
import 'package:trabalho1/pages/principal.dart';

class Usuarios extends StatefulWidget {
  const Usuarios({super.key});

  @override
  State<Usuarios> createState() => _UsuariosState();
}

class _UsuariosState extends State<Usuarios> {
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
              
              const SizedBox(height: 100),
              SizedBox(
                width: 420,
                height: 75,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => UsuarioConsulta(),))
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
                        'Consultar',
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
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => CadastroUsuario(),))
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
                        'Cadastrar',
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