class Tarefa {
  final String uid;
  final String nome;
  final String categoria;

  Tarefa(this.uid, this.nome, this.categoria);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'nome': nome,
      'categoria': categoria
    };
  }

  factory Tarefa.fromJson(Map<String, dynamic> json) {
    return Tarefa(
      json['uid'],
      json['nome'],
      json['categoria'],
    );
  }
}