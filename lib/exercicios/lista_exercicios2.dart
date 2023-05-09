/*
  Baseado na lista de exercicios de JavaScript
  Link => https://gustavoguanabara.github.io/javascript/exercicios/

  Nível 1: JavaScript básico
    Ex001: Olá, Mundo!
    Ex002: Interagindo com um botão
    Ex003: Usando o prompt() e o alert() juntos
    Ex004: Interagindo com partes do HTML (DOM)
    Ex005: Manipulando números
    Ex006: Somando dois números
    Ex007: Calculando a média de um aluno
    Ex008: Vários cálculos em JS
    Ex009: Contador de cliques
    Ex010: Usando um JavaScript externo

  Nível 2: Condições em JavaScript
    Ex011: Calculando média e dando 'Parabéns'
    Ex012: É par ou é ímpar?
    Ex013: Qual é o maior?
    Ex014: Interagindo com o sistema
    Ex015: Analisando data e hora
    Ex016: Calculando a idade
    Ex017: Sorteador de números
    Ex018: Jogo da adivinhação
    Ex019: O usuário escolhe o cálculo
    Ex020: Estações do ano

  Nível 3: Repetições em JavaScript
    Ex021: Contando de 1 até 10
    Ex022: Contando de 1 até 10 (marcando os pares)
    Ex023: Contando de 1 até 10 (mostrando só os pares)
    Ex024: Contagem regressiva de 10 até 1
    Ex025: Pegando dados de um formulário
    Ex026: Contagem mais "inteligente"
    Ex027: Tabuada
    Ex028: Fatorial de um número
    Em breve tem mais!
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

void exercicio14() {
  print("Interagindo com o sistema");

  DateTime dataAtual = DateTime.now();

  print(dataAtual);
}

void exercicio15() {
  print("Analisando data e hora");

  int dia = DateTime.now().day;
  int mes = DateTime.now().month;
  int ano = DateTime.now().year;
  int diaSemana = DateTime.now().weekday;
  int hora = DateTime.now().hour;
  int minuto = DateTime.now().minute;
  int segundo = DateTime.now().second;

  print("Dia: $dia");
  print("Mês: $mes");
  print("Ano: $ano");
  print("Dia da semana: $diaSemana");
  print("Hora: $hora");
  print("Minutos: $minuto");
  print("Segundos: $segundo");
}

void exercicio16() {
  print("Calculando a idade");

  print("Digite o seu ano de nascimento");
  int anoNascimento = int.parse(stdin.readLineSync()!);

  int anoAtual = DateTime.now().year;

  int resultado = DateTime(anoAtual).year - DateTime(anoNascimento).year;

  print(
      "Quem nasceu em $anoNascimento vai completar $resultado anos em $anoAtual.");
}

void exercicio17() {
  print("Sorteador de números");

  Random random = Random();
  num randomDouble = random.nextDouble() * 100;

  print(randomDouble.toStringAsFixed(2));
}

void exercicio18() {
  print("Jogo da adivinhação");

  Random random = Random();
  int numeroAdivinhacao = random.nextInt(100);

  print("Escolha um numero entre 0 e 100");
  int numeroUsuario = int.parse(stdin.readLineSync()!);

  if (numeroAdivinhacao == numeroUsuario) {
    print("Acertou");
    print("Numero adivinhacao => $numeroAdivinhacao");
    print("Numero usuario => $numeroUsuario");
  } else {
    print("Errou");
    print("Numero adivinhacao => $numeroAdivinhacao");
    print("Numero usuario => $numeroUsuario");
  }
}

void exercicio19() {
  print("O usuário escolhe o cálculo");

  print("Escolha:");
  print("+ - Soma");
  print("- - Subtracao");
  print("* - Multiplicacao");
  print("/ - Divisao");
  String operacaoMatematica = stdin.readLineSync()!;

  print("Digite o valor 1");
  num valor1 = num.parse(stdin.readLineSync()!);

  print("Digite o valor 2");
  num valor2 = num.parse(stdin.readLineSync()!);

  switch (operacaoMatematica) {
    case "+":
      print("$valor1 + $valor2 = ${valor1 + valor2}");
      break;
    case "-":
      print("$valor1 - $valor2 = ${valor1 - valor2}");
      break;
    case "*":
      print("$valor1 * $valor2 = ${valor1 * valor2}");
      break;
    case "/":
      print("$valor1 / $valor2 = ${valor1 / valor2}");
      break;
    default:
  }
}

void exercicio20() {
  print("Estações do ano");

  print("Digite o numero do mes. (Exemplo: 6)");
  int numeroMes = int.parse(stdin.readLineSync()!);
  if (numeroMes >= 1 && numeroMes <= 3) {
    print("Verão");
  } else if (numeroMes >= 4 && numeroMes <= 6) {
    print("Outono");
  } else if (numeroMes >= 7 && numeroMes <= 9) {
    print("Inverno");
  } else if (numeroMes >= 10 && numeroMes <= 12) {
    print("Primavera");
  } else {
    print("Valor invalido");
  }
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

void exercicio24() {
  print("Contagem regressiva de 10 até 1");
  for (var i = 10; i >= 1; i--) {
    print(i);
  }
}

void exercicio25() {
  print("Contagem mais 'inteligente'");

  print("Digite o valor de inicio da contagem");
  int valorInicioContagem = int.parse(stdin.readLineSync()!);

  print("Digite o valor do fim da contagem");
  int valorFimContagem = int.parse(stdin.readLineSync()!);

  print("Inicio");
  for (var i = valorInicioContagem; i <= valorFimContagem; i++) {
    print("- $i");
  }
  print("Fim");
}

void exercicio27() {
  print("Tabuada");

  print("Digite o valor");
  num valor = num.parse(stdin.readLineSync()!);

  for (var i = 1; i <= valor; i++) {
    for (var j = 1; j <= valor; j++) {
      print("$i X $j = ${i * j}");
    }
  }
}

void exercicio28() {
  print("Fatorial de um número");

  print("Digite o valor");
  int valor = int.parse(stdin.readLineSync()!);

  print(fatorial(valor));
}

int fatorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * fatorial(n - 1);
  }
}
