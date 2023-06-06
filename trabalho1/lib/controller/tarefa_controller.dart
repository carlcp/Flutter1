import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/tarefa.dart';
import '../pages/util.dart';
import 'login_controller.dart';

class TarefaController {
  //
  // ADICIONAR uma nova Tarefa gado na Coleção gados
  //
  void adicionar(context, gados, estado, id) {
    FirebaseFirestore.instance.collection('Tipos_gados').doc(id).set({
        'estado': estado,
        'nome': gados,
      })
        .then((value) => sucesso(context, 'Gado adicionado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.pop(context));
  }

  void adicionar2(context, nome, categoria) {
    FirebaseFirestore.instance.collection('tipos_usuarios').add({
        
        'nome': nome,
        'categoria': categoria,

      })
        .then((value) => sucesso(context, 'Usuario adicionado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'));
        
  }

  //
  // LISTAR
  //
  listar() {
    return FirebaseFirestore.instance
        .collection('Tipos_gados')
        ;
  }

  listar2() {
    return FirebaseFirestore.instance
        .collection('tipos_usuarios')
        .orderBy('nome')
        ;
  }

  //
  // ATUALIZAR
  //
  void atualizar(context, id, Tarefa t) {
    FirebaseFirestore.instance
        .collection('tipos_usuarios')
        .doc(id)
        .update(t.toJson())
        .then((value) => sucesso(context, 'Tarefa atualizada com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar a tarefa.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  //
  void excluir(context, id) {
    FirebaseFirestore.instance
        .collection('tarefas')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Tarefa excluída com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir a tarefa.'));
  }
}
