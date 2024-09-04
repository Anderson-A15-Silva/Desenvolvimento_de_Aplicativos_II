void main(){
  converterCelsius(100);
}

void converterCelsius(int c) {
  double fahrenheit = (c * 9/5) + 32;
  print("$c graus celsius equivale a $fahrenheit graus fahrenheit");
}