class Fase {
  final String fase;
  final String nomef;
  final String descricaof;

  const Fase({
    required this.fase,
    required this.nomef,
    required this.descricaof,
  });

  factory Fase.fromJson(Map<String, dynamic> json) {
    return Fase(
      fase: json['fase'],
      nomef: json['nomef'],
      descricaof: json['descricaof'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fase': fase,
      'nomef': nomef,
      'descricaof': descricaof,
    };
  }
}

class Personagem {
  final String imagem;
  final String nome;

  Personagem({
    required this.nome,
    required this.imagem,
  });
}
