void main(){
  calcularPotencia(5, 6);
}

void calcularPotencia(int x, int potencia){
  int resultado = x;
  for(int i = 1; i < potencia; i++){
    resultado *= x;
  }
  print("O número $x elevado a $potencia é igual a $resultado");
}