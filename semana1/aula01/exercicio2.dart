void main(){
  calcularPorcentagem(20, 80);
}

void calcularPorcentagem(int x, double porcentagem){
  double resultado = (x * porcentagem) / 100;
  print("$porcentagem% de $x é igual a $resultado");
}