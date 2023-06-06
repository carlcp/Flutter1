import 'package:flutter/material.dart';
import 'package:trabalho1/pages/usuarios.dart';
import 'package:trabalho1/controller/tarefa_controller.dart';
class CadastroUsuario extends StatefulWidget {
  @override
  _CadastroUsuarioState createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _senhaController = TextEditingController();
  var txtCat = TextEditingController();
  String _categoria = 'Selecione a Categoria';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 183, 189),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(210, 132, 14, 14),
        centerTitle: true,
        title: Text('Cadastro de Usuário'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome completo',
                  labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                    ),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                    ),
                ),
              ),
              
              
              SizedBox(height: 16),
              DropdownButton<String>(
                value: _categoria,
                onChanged: (String? newValue) {
                  setState(() {
                    txtCat.text = newValue!;
                  });
                },
                items: <String>['Selecione a Categoria','Bronze', 'Prata', 'Ouro', 'Diamante']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.white),
                  )
                  );
                }).toList(),
                    dropdownColor:  Color.fromARGB(210, 132, 14, 14),
              ),
              SizedBox(height: 16),
              ElevatedButton(
            onPressed: () => {

              TarefaController().adicionar2(context, _nomeController.text,  txtCat.text),
              

              ScaffoldMessenger.of(context).showSnackBar(

                SnackBar(content: Text('Cadastro Realizado Com Sucesso !',textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15))
                , backgroundColor: Color.fromARGB(255, 151, 119, 120))
              
              
              ),

              Navigator.pop(context, 
              MaterialPageRoute(builder: (context) => Usuarios(),))
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
            ],
          ),
        ),
      ),
    );
  }
}  
  