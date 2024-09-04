void main(){
  calcularMedia(10, 6, 4);
}

void calcularMedia(int x, int y, int z){
  double resultado = ((x * 2) + (y * 3) + (z * 4)) / (2+3+4);
  print("A média ponderada dos números $x, $y e $z com os respectivos pesos 2, 3 e 4 é igual a $resultado");
}