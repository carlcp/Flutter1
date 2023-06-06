import 'package:flutter/material.dart';
//
// MENSAGEM DE ERRO
//
void erro(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.redAccent.withOpacity(0.4),
      content: Text(
        textAlign: TextAlign.center,
        msg,
        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}

//
// MENSAGEM DE SUCESSO
//
void sucesso(context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Color.fromARGB(255, 151, 119, 120),
      content: Text(
        textAlign: TextAlign.center,
        
        msg,
        
        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15),
      ),
      
      duration: const Duration(seconds: 3),
    ),
  );
}

