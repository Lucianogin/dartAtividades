import 'dart:math' as math;

double soma(double n) {
  if (n > 1){
    return n + soma(n - 1); 
  } 
  return n;
}

int contaDigitos(double n){
  var cont = 1;
  if(n >= 10){
    n = n/10;
    cont = cont + contaDigitos(n);
  }
  return cont;

}

int potencia(int a, int b){
  if (b == 0) {
    return 1;
  }
  return potencia(a, b - 1) * a;
}

int somaList(List n, int tamanho) {
  if (tamanho >= 1){
    return n[tamanho] + somaList(n, tamanho-1);
  } 
    return n[tamanho];
}