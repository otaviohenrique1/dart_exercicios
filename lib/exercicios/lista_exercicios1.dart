/*
  link => https://github.com/montonurb/dart-exercises/blob/master/ListExercises1.txt
*/

import 'dart:io';
import 'dart:math';

void exercicio1() {
  print(
      "Escrever um programa que lê um determinado valor positivo e calcula seu dobro.");

  stdout.write("Digite o valor");
  num valor = num.parse(stdin.readLineSync()!);

  if (valor.isNegative) {
    print("Aceita apenas valores positivos");
  }
  print(valor * 2);
}

void exercicio2() {
  print(
      "Escreva um programa que leia dois números em ponto flutuante e imprima a soma desses números.");

  stdout.write("Digite o valor 1");
  num valor1 = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor 2");
  num valor2 = num.parse(stdin.readLineSync()!);

  print(valor1 + valor2);
}

void exercicio3() {
  print(
      "Escreva um programa que leia um inteiro, calcule e imprima o quadrado no número lido.");

  stdout.write("Digite o valor");
  num valor = num.parse(stdin.readLineSync()!);

  print(valor * valor);
}

void exercicio4() {
  print(
      "Escreva um programa que leia três números em ponto flutuante e imprima a média aritmética entre eles.");

  stdout.write("Digite o valor 1");
  num valor1 = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor 2");
  num valor2 = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor 3");
  num valor3 = num.parse(stdin.readLineSync()!);

  num resultado = (valor1 * valor2 * valor3) / 3;

  print(resultado);
}

void exercicio5() {
  print(
      "Escreva um programa que inicialize uma variável com o dia de hoje, outra com o mês e outra com o ano e imprima a data na tela no formato 'dd/mm/aaaa'.");

  int dia = DateTime.now().day;
  int mes = DateTime.now().month;
  int ano = DateTime.now().year;

  print("$dia/$mes/$ano");
}

void exercicio6() {
  print(
      "Escreva um programa que leia a altura e o raio de um cilindro circular e imprima o volume do mesmo, segundo a fórmula: V = pi.raio².altura ->obs: Imprima o volume com uma precisão de duas casas decimais.");

  stdout.write("Digite o valor do raio");
  num raio = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor da altura");
  num altura = num.parse(stdin.readLineSync()!);

  num resultado = pi * pow(raio, 2) * altura;

  print(resultado.toStringAsFixed(2));
}

void exercicio7() {
  print(
      "Faca um programa que converta uma medida de temperatura de Fahrenheit para Celsius. A partir da fórmula de conversão de Celsius para Fahrenheit, que é C = (5/9 (F-32)) , deduza a fórmula para a conversão de Fahrenheit para Celsius para que você possa resolver o problema.");

  stdout.write("Digite o valor da temperatura");
  num temperatura = num.parse(stdin.readLineSync()!);

  // C => F
  num resultadoCelsiusFahrenheit = (temperatura * 1.8) + 32;

  // F => C
  num resultadoFahrenheitCelsius = (5 / 9) * (temperatura - 32);

  print("Temperatura => $temperatura");
  print("Celsius para Fahrenheit => $resultadoCelsiusFahrenheit");
  print("Fahrenheit para Celsius => $resultadoFahrenheitCelsius");
}

void exercicio8() {
  print("Escrever um programa em C que lê 3 valores reais a, b e c e calcula:");

  stdout.write("Digite o valor de a");
  num a = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor de b");
  num b = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor de c");
  num c = num.parse(stdin.readLineSync()!);

  num areaTriangulo = (a * b) / 2; // A = (b*h)/2
  num areaCirculo = pi * pow(c, 2); // A = pi*r*r
  num areaTrapezio = ((a + b) * c) / 2; // A = ((a+b)*h)/2
  num areaQuadrado = b * b; // A = a*a
  num areaRetangulo = a * b; // A = a*b

  print(
      "a área do triângulo que tem a por base e b por altura. => $areaTriangulo");
  print("a área do círculo de raio c. => $areaCirculo");
  print(
      "a área do trapézio que tem a e b por bases e c por altura. => $areaTrapezio");
  print("a área do quadrado de lado b. => $areaQuadrado");
  print("a área do retângulo de lados a e b. => $areaRetangulo");
}

void exercicio9() {
  print(
      "Escreva um programa leia uma quantidade de tempo dada em horas, minutos e segundos e converta para um número equivalente em segundos.");

  stdout.write("Digite o valor em horas");
  num horas = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor em minutos");
  num minutos = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor em segundos");
  num segundos = num.parse(stdin.readLineSync()!);

  num horasParaSegundos = horas * 3600;
  num minutosParaSegundos = minutos * 60;

  num resultado = horasParaSegundos + minutosParaSegundos + segundos;

  print(resultado);
}

void exercicio10() {
  print(
      "Uma firma contrata um encanador a R\$ 20,00 por dia. Escreva um programa que leia o número de dias trabalhados pelo encanador e imprima a quantia líquida que deverá ser paga, sabendo-se que são descontados 8% para o imposto de renda.");

  num diariaEncanador = 20;
  num impostoRenda = 0.08;

  stdout.write("Informe a quantidade de dias trabalhada: ");
  num quantidadeDiasTrabalhada = num.parse(stdin.readLineSync()!);

  var resultado1 = quantidadeDiasTrabalhada * diariaEncanador;
  num resultado2 = (resultado1) - (resultado1 * impostoRenda);

  print(resultado2);
}
