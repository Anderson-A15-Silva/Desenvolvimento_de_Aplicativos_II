import 'dart:io';

void main(){
  print(reverterString());
}

String reverterString(){
  print("Digite uma palavra para ter sua ordem revertida: ");
  final String palavra = stdin.readLineSync()!.trim();

  return palavra.split('').reversed.join();
}