void main(){
    // Variables
    var random = "16";

    // Constants
    const mensage = "Hello World";

    // Strings
    const String name = "Anderson";

    // Numbers: Subtype integer and double
    num number = 28;
    int age = 16;
    double money = 2500.50;

    // Booleans
    bool isStudent = true;

    // Lists
    List<int> numeros = [1, 2, 3];
    print(numeros[0]);

    // Maps
    Map<String, dynamic> pessoas = {
      'pessoa1': {
        'nome': 'Alice',
        'idade': 25,
      },
      'pessoa2': {
        'nome': 'Bob',
        'idade': 30,
      },
      'pessoa3': {
        'nome': 'Carol',
        'idade': 22,
      }
    };
      // Acessando informações das pessoas
      print('Nome da pessoa 1: ${pessoas['pessoa1']['nome']}');
      print('Idade da pessoa 2: ${pessoas['pessoa2']['idade']}');

  // Dynamics
  dynamic anything;

  /*
     print(message.toUpperCase()); // All letters lower
     print(message.trim()); // Remove all spaces
     print(money.toString()); // Convert to string
     print(money.toInt()); // Convert to integer
     print(age.toDouble()); // Convert to double
     print(money.floor()); // Convert to integer
     print(age.floorToDouble()); // Convert to double
     print(message.toLowerCase()); // All letters upper
     print(money.round()); // Convert to near integer
     print(age.roundToDouble()); // Convert to near double
  */
}