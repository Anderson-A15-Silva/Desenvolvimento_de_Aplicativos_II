import 'dart:io';

void main(){
  print(contarCaracteres());
}

String contarCaracteres(){
  print("Digite uma frase para ter os caracteres contados: ");
  final String frase = stdin.readLineSync()!.trim();
  final int resultado = frase.length;

  return 'A quantidade de caracteres na frase "$frase"  é igual a $resultado';
}