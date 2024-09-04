void main(){
  calcularDivisao(48, 4);
}

void calcularDivisao(int x, int y){
  double quociente = x / y;
  int resto = x % y;

  print("Na divisão de $x por $y o quociente é $quociente e o resto da divisão é $resto");
}