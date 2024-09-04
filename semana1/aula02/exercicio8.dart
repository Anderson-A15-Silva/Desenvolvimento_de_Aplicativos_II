void main(){
  calcularVolume(40);
}

void calcularVolume(int r){
  double resultado = (4 * 3.1415 * (r*r*r)) / 3;
  print("O volume da esfera é igual a $resultado");
}