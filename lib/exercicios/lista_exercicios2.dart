/*
  Baseado na lista de exercicios de JavaScript
  Link => https://gustavoguanabara.github.io/javascript/exercicios/
*/

import 'dart:math';
import 'dart:io';

void exercicio1() {
  print("Olá, Mundo!");
}

void exercicio5() {
  print("Manipulando números");

  print("Digite o valor");

  num valor = num.parse(stdin.readLineSync()!);

  num resultadoDobro = valor * 2;
  num resultadoMetade = valor / 2;

  print("O dobro de $valor é $resultadoDobro e a metade é $resultadoMetade!");
}

void exercicio6() {
  print("Somando dois números");

  print("Digite o valor 1");
  num valor1 = num.parse(stdin.readLineSync()!);

  print("Digite o valor 2");
  num valor2 = num.parse(stdin.readLineSync()!);

  print(valor1 + valor2);
}

void exercicio7() {
  print("Calculando a média de um aluno");

  print("Digite o nome");
  String nome = stdin.readLineSync()!;

  print("Digite a nota 1");
  num nota1 = num.parse(stdin.readLineSync()!);

  print("Digite a nota 2");
  num nota2 = num.parse(stdin.readLineSync()!);

  num media = (nota1 + nota2) / 2;

  print("Calculando a média final de $nome.");
  print("As notas obtidas foram $nota1 e $nota2.");
  print("A média final será $media.");
}

void exercicio8() {
  print("Vários cálculos");

  print("Digite o valor");
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

void exercicio11() {
  print("Calculando média e dando 'Parabéns'");

  print("Digite o nome");
  String nome = stdin.readLineSync()!;

  print("Digite a nota 1");
  String nota1 = stdin.readLineSync()!;

  print("Digite a nota 2");
  String nota2 = stdin.readLineSync()!;

  num media = (num.parse(nota1) + num.parse(nota2)) / 2;

  print("Calculando a média final de $nome.");
  print("As notas obtidas foram $nota1 e $nota2.");
  print("A média final será $media.");

  if (media > 6) {
    print("A mensagem que temos é: Meus parabéns!");
  } else {
    print("A mensagem que temos é: Estude um pouco mais!");
  }
}

void exercicio12() {
  print("É par ou é ímpar?");

  print("Digite o valor");
  num valor = num.parse(stdin.readLineSync()!);

  if (valor % 2 == 0) {
    print("$valor é par");
  } else {
    print("$valor é impar");
  }
}

void exercicio13() {
  print("Qual é o maior?");

  print("Digite o valor 1");
  num valor1 = num.parse(stdin.readLineSync()!);

  print("Digite o valor 2");
  num valor2 = num.parse(stdin.readLineSync()!);

  if (valor1 > valor2) {
    print("$valor1 é maior que $valor2");
  } else {
    print("$valor1 é menor que $valor2");
  }
}

void exercicio17() {
  print("Sorteador de números");

  Random random = Random();
  num randomDouble = random.nextDouble() * 100;

  print(randomDouble.toStringAsFixed(2));
}

void exercicio21() {
  print("Contando de 1 até 10");
  for (var i = 0; i < 10; i++) {
    print(i + 1);
  }
}

void exercicio22() {
  print("Contando de 1 até 10 (marcando os pares)");
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("$i *");
    } else {
      print(i);
    }
  }
}

void exercicio23() {
  print("Contando de 1 até 10 (mostrando só os pares)");
  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
