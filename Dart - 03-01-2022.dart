// Hoje aprendi sobre Classes, Objetos e Atributos. Dando início a Programação Orientada a Objetos.

//EN: Today I've Learned about Class, Object and attribute. Starting Object Oriented Programming.

// Code:

void main() {
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = 'Gabriel';
  pessoa1.idade = 40;
  print(pessoa1.nome);
  print(pessoa1.idade);
  
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Phelix';
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);

}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;
}
***********************************************************************************************************************************************************************************

// Hoje aprendi sobre Métodos da linguagem Dart.

// EN: Today I've Learned about Methods on Dart language.

Code:

void main() {
  Pessoa pessoa1 = Pessoa();
  pessoa1.trocarNome('Gabriel');
  pessoa1.idade = 40;
  print(pessoa1.nome);
  print(pessoa1.idade);
  
  print(pessoa1.aniversario());
  
  
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Phelix';
  pessoa2.idade = 30;
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);
  
  print(pessoa2.aniversario());
  

}

class Pessoa {
  String? nome;
  int? idade;
  bool casado = false;
  
  int? aniversario() {
    print('Parabéns! $nome');
    if(idade != null) {
      idade = idade! + 1;
    }
    return idade;
  }
  
  void casar() {
    casado = true;
  }
  
  void trocarNome(String n) {
    nome = n;
  }
}

*********************************************************************************************************************************************************************************

// Hoje aprendi sobre Construtores e Construtores Nomeados.

// Code:
  
void main() {
  Pessoa pessoa1 = Pessoa.solteira(nome: 'Gabriel', idade: 40);
  print(pessoa1.nome);
  print(pessoa1.idade);

  print(pessoa1.aniversario());

  Pessoa pessoa2 = Pessoa.casada(nome: 'Phelix', idade: 30);
  print(pessoa2.nome);
  print(pessoa2.idade);

  print(pessoa2.aniversario());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando o $nome com idade $idade');
  }
  
  
  Pessoa.casada({required this.nome, required this.idade, this.casado = true});
  
  Pessoa.solteira({required this.nome, required this.idade, this.casado = false});
  

  String nome;
  int idade;
  bool casado;

  int? aniversario() {
    print('Parabéns! $nome');

    idade = idade++;

    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }
}
