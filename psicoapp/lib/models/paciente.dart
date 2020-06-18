class Paciente {
  int id;
  String nome;
  String cPF;
  String dataNascimento;

  Paciente({this.id, this.nome, this.cPF, this.dataNascimento});

  Paciente.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    cPF = json['CPF'];
    dataNascimento = json['data_nascimento'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['CPF'] = this.cPF;
    data['data_nascimento'] = this.dataNascimento;
    return data;
  }
}