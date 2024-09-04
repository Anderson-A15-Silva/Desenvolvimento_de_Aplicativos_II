import 'dart:io';

void main(){
  print(buscarESubstituir());
}

String buscarESubstituir(){
  print("Digite uma frase: ");
  final String frase = stdin.readLineSync()!.trim();
  print("Digite uma palavra para ser buscada: ");
  final String palavraAnterior = stdin.readLineSync()!.trim();
  print("Digite uma palavra para substituí-la: ");
  final String palavraAtual = stdin.readLineSync()!.trim();

  final String resultado = frase.replaceAll(palavraAnterior, palavraAtual);


  return "Frase Anterior: $frase\nFraseAtual: $resultado";
}