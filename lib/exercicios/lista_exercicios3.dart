import 'dart:io';

void exercicio1() {
  int numeroValor1 = 1;
  print(numeroValor1);

  double numeroValor2 = 1.5;
  print(numeroValor2);

  num numeroValor3 = 1;
  print(numeroValor3);

  num numeroValor4 = 1.5;
  print(numeroValor4);

  String texto1 = "Texto";
  print(texto1);

  String stringComValorConcatenado = "Texto $numeroValor1";
  print(stringComValorConcatenado);

  String stringComValoresConcatenados =
      "Texto $numeroValor1  $numeroValor2  $numeroValor3";
  print(stringComValoresConcatenados);

  bool valorBool1 = true;
  print(valorBool1);

  bool valorBool2 = false;
  print(valorBool2);

  // dynamic => variavel onde o tipo pode mudar
  dynamic variavelDynamic1 = "456";
  print(variavelDynamic1);

  dynamic variavelDynamic2 = 456;
  print(variavelDynamic2);

  dynamic variavelDynamic3 = true;
  print(variavelDynamic3);

  // var => variavel onde o tipo nao foi informado
  var variavelVar1 = "123";
  print(variavelVar1);

  var variavelVar2 = 123;
  print(variavelVar2);

  var variavelVar3 = false;
  print(variavelVar3);

  const variavelConst = "123456"; // Valor nao pode ser modificado
  print(variavelConst);

  final String texto2 = "Texto"; // Valor so pode atribuido na criacao
  print(texto2);

  late String texto3; // Valor sera atribuido depois
  texto3 = "0123456789";
  print(texto3);
}

void exercicio2() {
  List listaVazia1 = List.empty();
  print(listaVazia1);

  List listaVazia2 = [];
  print(listaVazia2);

  List<String> listaVazia3 = [];
  print(listaVazia3);

  List lista1 = ["1", 2, true];
  print(lista1);

  List<dynamic> lista2 = ["1", 2, true];
  print(lista2);

  List<String> lista3 = ["1", "a", "lista"];
  print(lista3);

  List<int> lista4 = [1, 2, 3, 4, 5, 6];
  print(lista4);

  List<double> lista5 = [1, 2.5, 3.09, 4, 5.001, 6.99999];
  print(lista5);

  List<num> lista6 = [1, 2.5, 3.09, 4, 5.001, 6.99999, 7, 0, 99];
  print(lista6);

  List<bool> lista7 = [true, false];
  print(lista7);

  Map mapVazio1 = {};
  print(mapVazio1);

  Map<String, dynamic> mapVazio2 = {};
  print(mapVazio2);

  Map map1 = {
    "item1": 99,
    "item2": "teste1",
    "item3": true,
  };
  print(map1);

  Map<String, dynamic> map2 = {
    "item1": 99,
    "item2": "teste1",
    "item3": true,
  };
  print(map2);

  List<Map<String, dynamic>> listMap1 = [];
  print(listMap1);

  List<Map<String, dynamic>> listMap2 = [
    {
      "item1": 99,
      "item2": "teste1",
      "item3": true,
    },
    {
      "item4": 100,
      "item5": "teste2",
      "item6": false,
    },
  ];
  print(listMap2);
}

void exercicio3() {
  stdout.write("Digite a idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 0 && idade < 18) {
    print("Menor de idade");
  } else if (idade >= 18 && idade <= 120) {
    print("Maior de idade");
  } else {
    print("Valor invalido");
  }
}

void exercicio4() {
  stdout.write("Digite o valor 1: ");
  num valor1 = num.parse(stdin.readLineSync()!);
  print((valor1 < 18) ? "Menor de idade" : "Maior de idade");
}

void exercicio5() {
  print("Escolha:");
  print("+ - Soma");
  print("- - Subtracao");
  print("* - Multiplicacao");
  print("/ - Divisao");
  String opcao = stdin.readLineSync()!;

  stdout.write("Digite o valor 1: ");
  num valor1 = num.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor 2: ");
  num valor2 = num.parse(stdin.readLineSync()!);

  switch (opcao) {
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

void exercicio6() {
  stdout.write("Digite o valor: ");
  num valor = num.parse(stdin.readLineSync()!);

  for (var i = 0; i < valor; i++) {
    for (var j = 0; j < valor; j++) {
      print(i * j);
    }
  }
}

void exercicio7() {
  stdout.write("Digite o valor");
  num valor = num.parse(stdin.readLineSync()!);

  num i = 0;
  while (i <= valor) {
    print(i * valor);
    i++;
  }
}
