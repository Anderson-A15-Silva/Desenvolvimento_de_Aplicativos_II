void main(){
  calcularMontante(100000, 0.002, 30);
}

void calcularMontante(int c, double r, int t){
  double montante = c + (((c * r) / 100) * (t * 12));
  print("O montante final do investimento de $c durante $t anos é igual $montante");
}