import 'package:flutter/material.dart';

class UsuarioConsulta extends StatelessWidget {
  const UsuarioConsulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserListPage();
  }
}

class UserListPage extends StatelessWidget {
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar Nome',
                  border: InputBorder.none,
                  icon: Icon(Icons.star),
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(
                      color: Colors.white,
                    ),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(users[index]["image"]),
                    ),
                    title: Row(
                      children: [
                        Text(
                          users[index]["name"],
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.emoji_events,
                          color: _getColor(users[index]["categoria"]),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      users[index]["email"],
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColor(String categoria) {
  switch (categoria.toLowerCase()) {
    case "diamante":
      return Colors.blue;
    case "ouro":
      return Colors.yellow;
    case "prata":
      return Colors.grey;
    case "bronze":
      return Colors.brown;
    default:
      return Colors.black;
  }
}
}     