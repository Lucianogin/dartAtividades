import 'dart:io';
import 'dart:convert';
import 'atividades.dart' as atividades;

int menu () {
  print('----------------------------------- MENU ---------------------------------');
  print('                                                                           ');
  print('---------------------Digite 1 Somatório Recursivo--------------------------');
  print('---------------------Digite 2 Contar Digitos-------------------------------');
  print('---------------------Digite 3 Potencia Recursiva---------------------------');
  print('---------------------Digite 4 Somar valores na lista-----------------------');


  print('---------------------Digite 0 para Sair-----------------------------------');
  var linha = stdin.readLineSync();
  print(linha);
  return int.tryParse(linha);
}

void iniciar(){
  int op;
  do {
    op = menu();
    
    switch (op) {
      case 0: {
        print('Até depois que eu arrumar o bug');
      }
      break;
      case 1: {
        print('Digite o Valor de N para o somatório:');
        print('${atividades.soma(double.tryParse(stdin.readLineSync())).toStringAsFixed(0)}');
      }
      break;
      case 2: {
        print('Digite o Valor para contar os digitos:');
        print('${atividades.contaDigitos(double.tryParse(stdin.readLineSync())).toStringAsFixed(0)}');
      }
      break;
      case 3: {
        print('Digite os Valores de a e b RESPECTIVAMENTE:');
        print('${atividades.potencia(int.tryParse(stdin.readLineSync()),int.tryParse(stdin.readLineSync()))}');
      }
      break;
      case 4: {
        var lista = <int> [1,2,3,4,5];


        print('Valor do somatório: ${atividades.somaList(lista, lista.length-1)}');
      }
      break;
      default: print('Opção Inválida');
    }
  } while(op != 0);
}