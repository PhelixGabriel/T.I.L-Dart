// Hoje eu aprendi sobre Exceptions e Try Catch.

// EN: Today I've Learned about Exceptions / Try Catch.

//Code:

void main() {
  try{
    int resultado = 100 ~/ 2;
    print(resultado);
    
    double? valor = double.tryParse('50.2a');
    print(valor);
  } on UnsupportedError {
    print('Erro unsuported');
  } on FormatException catch (error) {
    print('Erro Format ${error.message}');
  } catch (e) {
    print (e);
  } finally {
    print('finalizou');
  }
}
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Hoje eu aprendi sobre Exception Personalizadas 

// EN: Today I've Learned about personalized Exceptions on try/catch errors.

// Code:
  
void main() {
  try{
    funcao(-10);
  }on ParametroIncorreto {
    print('Informações Incorretas');
  } catch (e) {
    print (e);
  }
}

void funcao(int x) {
  if(x <= 0) {
    throw ParametroIncorreto();
  }
  print(x);
}

class ParametroIncorreto implements Exception {
  String toString() {
    return 'Voce não pode passar um valor menor ou igual a 0 (zero)';
  }
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Hoje aprendi sobre enumeradores

// EN: Today I've Learned about Enum

// Code:
enum StatusPagamento {pendente, pago, reembolsado}

void main() {
  StatusPagamento status = StatusPagamento.pago;
  switch(status){
      
    case StatusPagamento.pendente:
      // TODO: Handle this case.
      break;
    case StatusPagamento.pago:
      // TODO: Handle this case.
      break;
    case StatusPagamento.reembolsado:
      // TODO: Handle this case.
      break;
  }
  
  print(StatusPagamento);
  
  
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Hoje aprendi sobre os modificadores Final e Const

// EN: Today I've Learned about Final and Const KeyWord.

// Code: 

void main() {
  const nome = 'Gabriel';
  const idade = 50 + 30;
  const lista = ['Gabriel', 'Phelix'];
  
  final String sobrenome;
  if(nome == 'Gabriel') {
    sobrenome = 'Phelix';
  } else {
    sobrenome = 'Whatever';
  }
  
  sobrenome = 'Teste do modificador Final';
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Hoje aprendi sobre Operadores Cascata

// Code:
void main() {
  List<String> nomes = [];


}

List<String> funcao(List<String> lista) {
  return lista
    ..add('Gabriel')
    ..add('Phelix')
    ..remove('Gabriel');
  
  
}
