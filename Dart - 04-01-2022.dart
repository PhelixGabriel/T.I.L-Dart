// Hoje aprendi sobre Getters e Setters

// EN: Today I've Learned about Getter and Setters.

// Code:

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Gabriel', idade: 40);
  Pessoa pessoa2 = Pessoa(nome: 'Phelix', idade: 30, casado: true);
  
  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 10000;
  
  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando o $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado;
  
  double? _dinheiro;

  int aniversario() {
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
  
  set dinheiro(double? valor) {
    if(valor != null && valor >= 0 && valor < 100000) {
       print('Modificando dinheiro do $nome');
    _dinheiro = valor;
      
    }
   
  }
  
  double? get dinheiro {
    print('Lendo dinheiro do $nome');
    return _dinheiro;
  }
}

*********************************************************************************************************************************************************************************

// Hoje aprendi sobre atibutos Nullable

// EN: Today I've Learned about Nullable Atributes

// Code:

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Gabriel', idade: 40);
  Pessoa pessoa2 = Pessoa(nome: 'Phelix', idade: 30, casado: true);
  
  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 10000;
  
  print(pessoa1.nomeSecreto);
  print(pessoa1.nomeSecreto);
  
  String? nome = pessoa1.nomeSecreto;
  if(nome != null) {
    print(nome.toUpperCase());
  }
  
  if(pessoa1.atributo != null) {
    print(pessoa1.atributo!.toUpperCase());
  }
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando o $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado;
  
  double _dinheiro = 0;
  
  String? _nomeSecreto = 'Flutter';
  
  get nomeSecreto {
    String? nome = _nomeSecreto;
    if(nome != null) {
      _nomeSecreto = null;
      return nome;
    }else {
      return null;
    }
    
  }
  
  String? atributo = 'Olá';

  int aniversario() {
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
  
  set dinheiro(double valor) {
    if(valor >= 0 && valor < 100000) {
       print('Modificando dinheiro do $nome');
    _dinheiro = valor;
      
    }
   
  }
  
  double get dinheiro {
    print('Lendo dinheiro do $nome');
    _dinheiro -= 100;
    return _dinheiro;
  }
}

*********************************************************************************************************************************************************************************

// Hoje eu aprendi sobre o modificador Late.

// Today I've Learned about Late Modifier

// Code:

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Gabriel', idade: 40);
  pessoa1.cpf = '412.254.365-48';
  print(pessoa1.cpf);
  print(pessoa1.temperatura);
  
}


class Pessoa {
  Pessoa ({required this.nome, required this.idade});
  
  String nome;
  int idade;
  
  
  late String cpf;
  
  late double temperatura = medirTemperatura();
  
  double medirTemperatura() {
    print('Mediu a temperatura');
    return 37.0;
  }
  
}

*********************************************************************************************************************************************************************************

// Hoje eu aprendi sobre o operador "?."

// Today I've learned about the "?." operator.

// Code:

void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Gabriel', idade: 40);
  print(pessoa1.nome);
  print(pessoa1.idade);
  
  Pessoa? pessoa2;
  print(pessoa2?.nome.toUpperCase());
  print(pessoa2?.idade);
  print(pessoa2?.cidade?.toUpperCase());
}


class Pessoa {
  Pessoa ({required this.nome, required this.idade});
  
  String nome;
  int idade;
  
  String? cidade;
  
  void comer() {
    print('Comendo');
  }
  }
  
*********************************************************************************************************************************************************************************

