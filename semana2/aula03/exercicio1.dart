import 'dart:io';

void main(){
  print(concatenarStrings());
}

String concatenarStrings(){
  print("Digite a primeira string a ser concatenada: ");
  final String primeiraString = stdin.readLineSync()!.trim();
  print("Digite a segunda string a ser concatenada: ");
  final String segundaString = stdin.readLineSync()!.trim();
  print("Digite a terceira string a ser concatenada: ");
  final String terceiraString = stdin.readLineSync()!.trim();

  return primeiraString + segundaString + terceiraString;
}
