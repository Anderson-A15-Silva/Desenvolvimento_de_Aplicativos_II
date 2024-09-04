void main() {
  var notebook = Pagamento();
  notebook.pagar(TipoPagamento.BOLETO);
}

enum TipoPagamento { PIX, BOLETO, CARTAO }

extension ExtensaoTipoPagamento on TipoPagamento {
  String toValue() {
    Map values = {
      TipoPagamento.PIX: "Pix",
      TipoPagamento.BOLETO: "Boleto",
      TipoPagamento.CARTAO: "Cartao"
    };
    return values[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipo) {
    if (tipo.toValue() == "Pix") {
      print("Pagando com pix...");
    } else if (tipo.toValue() == "Boleto") {
      print("Pagando com boleto...");
    } else if (tipo.toValue() == "Cartao") {
      print("Pagando com cartao...");
    }
  }
}
