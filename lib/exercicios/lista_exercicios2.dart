/*
  Baseado na lista de exercicios de JavaScript
  Link => https://gustavoguanabara.github.io/javascript/exercicios/
*/

import 'dart:io';

void exercicio1(num valor) {
  print("Olá, Mundo!");
}

void exercicio5(num valor) {
  num resultadoDobro = valor * 2;
  num resultadoMetade = valor / 2;
  print("O dobro de $valor é $resultadoDobro e a metade é $resultadoMetade!");
}

void exercicio6(double valor1, double valor2) {
  print(valor1 + valor2);
}

void exercicio7() {
  String nome = stdin.readLineSync()!;
  String nota1 = stdin.readLineSync()!;
  String nota2 = stdin.readLineSync()!;
  num media = (num.parse(nota1) + num.parse(nota2)) / 2;

  print("Calculando a média final de $nome.");
  print("As notas obtidas foram $nota1 e $nota2.");
  print("A média final será $media.");
}

void exercicio4(int valor) {
  print(valor * valor);
}
