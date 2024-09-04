void main(){
  calcularOperacoes(2, 5);
}

void calcularOperacoes(int x, int y){
  int sum = x + y;
  int sub = x - y;
  double div = x / y; // use ~/ para returnar apenas int
  int mult = x * y;

  print("A soma dos números $x e $y resulta em $sum");
  print("A subtração dos números $x e $y resulta em $sub");
  print("A divisão dos números $x e $y resulta em $div");
  print("A multiplicação dos números $x e $y resulta em $mult");
}