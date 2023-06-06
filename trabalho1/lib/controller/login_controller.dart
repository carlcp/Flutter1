import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trabalho1/pages/login.page.dart';
import 'package:trabalho1/pages/principal.dart';

import '../pages/util.dart';

class LoginController {
  //
  // CRIAR UMA NOVA CONTA no serviço
  // Firebase Authentication
  //
  criarConta(context, nome, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {
      //
      // Armazenar o nome do usuário no Firebase Firestore
      //
      FirebaseFirestore.instance.collection('usuarios').doc(idUsuario()).set({
        'uid': resultado.user!.uid,
        'nome': nome,
      });

      sucesso(context, 'Usuário criado com sucesso.');
      Navigator.pop(context);
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi utilizado.');
          break;
        case 'invalid-email':
          erro(context, 'O formato do email é inválido');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

 
  //Atualizar nome
  void atualizar(context, nome) {
    FirebaseFirestore.instance.collection('usuarios').doc(idUsuario()).set({
        'uid': idUsuario(),
        'nome': nome,
      })
        .then((value) => sucesso(context, 'Tarefa atualizada com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar a tarefa.'))
        ;
  }

  //
  // LOGIN
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      sucesso(context, 'Usuário autenticado com sucesso!');
      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menu()),
                  );
    }).catchError((e) {
      switch (e.code) {
        case 'user-not-found':
          erro(context, 'Usuário não encontrado.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // ESQUECEU A SENHA
  //
  esqueceuSenha(context, String email) {
    FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value) {
      sucesso(context, 'Email enviado com sucesso.');
    }).catchError((e) {
      erro(context, 'ERRO: ${e.code.toString()}');
    });
     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
  }

  //
  // LOGOUT
  //
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // ID do Usuário Logado
  //
  idUsuario() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

  //
  // NOME do Usuário Logado
  //
  Future<String> usuarioLogado() async {
    var usuario = '';
    await FirebaseFirestore.instance
        .collection('usuarios')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        usuario = resultado.docs[0].data()['nome'] ?? '';
      },
    );
    return usuario;
  }
}
