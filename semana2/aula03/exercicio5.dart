import 'dart:io';

void main(){
  print(ePalindromo());
}

bool ePalindromo(){
  print("Digite uma palavra e verifique se ela é um palíndromo: ");
  final String palavra = stdin.readLineSync()!.trim();

  if (palavra == palavra.split('').reversed.join()){
    return true;
  } else {
    return false;
  }
}