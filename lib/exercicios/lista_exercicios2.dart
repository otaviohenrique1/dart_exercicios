/*
  Baseado na lista de exercicios de JavaScript
  Link => https://gustavoguanabara.github.io/javascript/exercicios/
*/

import 'dart:math';
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

void exercicio8() {
  String valor = stdin.readLineSync()!;
  num numero = num.parse(valor);
  num valorAbsoluto = numero.abs();
  int parteInteira = numero.toInt();
  num inteiroMaisProximo = numero.floor();
  num raizQuadrada = sqrt(numero);
  num raizCubica = pow(numero, 1 / 3);
  num elevado2 = pow(numero, 2);
  num elevado3 = pow(numero, 3);

  print("O número a ser analisado aqui será o $numero");
  print("--------------------------");
  print("O seu valor absoluto é $valorAbsoluto");
  print("A sua parte inteira é $parteInteira");
  print("O valor inteiro mais próximo é $inteiroMaisProximo");
  print("A sua raiz quadrada é $raizQuadrada");
  print("A sua raiz cúbica é $raizCubica");
  print("O valor de quadrado de $numero é $elevado2");
  print("O valor de cubo de $numero é $elevado3");
}
