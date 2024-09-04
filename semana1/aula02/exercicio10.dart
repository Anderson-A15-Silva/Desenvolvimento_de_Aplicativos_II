void main(){
  calcularPreco(50000, 5);
}

void calcularPreco(double x, double y){
  double resultado = x - ((x * y) / 100);
  print("O preço final do produto é igual a $resultado");
}