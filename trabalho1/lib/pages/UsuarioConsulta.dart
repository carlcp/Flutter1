import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trabalho1/controller/tarefa_controller.dart';
import '../controller/login_controller.dart';
import '../model/tarefa.dart';
class UsuarioConsulta extends StatelessWidget {
  const UsuarioConsulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserListPage();
  }
}

class UserListPage extends StatelessWidget {

  var txtNome = TextEditingController();
  var txtCat = TextEditingController();

  final List<Map<String, dynamic>> users = [   
     {      "name": "João",      "email": "joao@gmail.com",      "categoria": "Diamante",      "image": "https://picsum.photos/200",    }, 
     {      "name": "Maria",      "email": "maria@hotmail.com",      "categoria": "Prata",      "image": "https://picsum.photos/200",    },  
       {      "name": "Pedro",      "email": "pedro@yahoo.com",      "categoria": "Ouro",      "image": "https://picsum.photos/200",    },   
        {      "name": "Carlos",      "email": "Carlos@gmail.com",      "categoria": "Diamante",      "image": "https://picsum.photos/200",    },
        {      "name": "Ana",      "email": "ana@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Caio",      "email": "Caio@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Paulo",      "email": "Paulo@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Plinio",      "email": "Plinio@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Roger",      "email": "Roger@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Cesar",      "email": "Cesar@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Souza",      "email": "Souza@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Mario",      "email": "Mario@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Paula",      "email": "Paula@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Igor",      "email": "Igor@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Miguel",      "email": "Miguel@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Bruno",      "email": "Bruno@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Vitor",      "email": "Vitor@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Lucas",      "email": "Lucas@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Gabriel",      "email": "Gabriel@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Rogerio",      "email": "Rogerio@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Lipe",      "email": "Lipe@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Gabi",      "email": "Gabi@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },
        {      "name": "Lucio",      "email": "Lucio@gmail.com",      "categoria": "Bronze",      "image": "https://picsum.photos/200",    },

          ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 183, 189),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(210, 132, 14, 14),
        title: Text("Lista de Usuários"),
        centerTitle: true,
      ),
      // BODY
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: TarefaController().listar2().snapshots(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Center(
                  child: Text('Não foi possível conectar.'),
                );
              case ConnectionState.waiting:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              default:
                final dados = snapshot.requireData;
                if (dados.size > 0) {
                  return ListView.builder(
                    itemCount: dados.size,
                    itemBuilder: (context, index) {
                      String id = dados.docs[index].id;
                      dynamic item = dados.docs[index].data();
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.account_circle_sharp),
                          title: Text(item['nome']),
                          subtitle: Text(item['categoria']),
                           onTap: () {
                            txtNome.text = item['nome'];
                            txtCat.text = item['categoria'];
                            salvarTarefa(context, docId: id);
                          },
                         
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('Nenhuma tarefa encontrada.'),
                  );
                }
            }
          },
        ),
      ),
     
    );
  }


  void salvarTarefa(context, {docId}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: Text("Adicionar Tarefa"),
          content: SizedBox(
            height: 250,
            width: 300,
            child: Column(
              children: [
                TextField(
                  controller: txtNome,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    prefixIcon: Icon(Icons.description),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: txtCat,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
          actions: [
            TextButton(
              child: Text("fechar"),
              onPressed: () {
                txtNome.clear();
                txtCat.clear();
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("salvar"),
              onPressed: () {
                var t = Tarefa(
                  LoginController().idUsuario(),
                  txtNome.text,
                  txtCat.text,
                );
                txtNome.clear();
                txtCat.clear();
                if (docId == null) {
                  //
                  // ADICIONAR TAREFA
                  //
                  
                } else {
                  //
                  // ATUALIZAR TAREFA
                  //
                  TarefaController().atualizar(context, docId, t);
                }
              },
            ),
          ],
        );
      },
    );
  }
  
}


