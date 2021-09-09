import 'cliente.dart';

class ContaCorrente {
  late Cliente titular;
  int agencia = 145;
  int conta = 0;
  double saldo = 20.0;
  double chequeEspecial = -100.00;

  bool possuiSaldo(double valor) {
    if (saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando $valor reais.');
      return true;
    }
  }

  bool transferencia(double valor, ContaCorrente contaDestino) {
    if (!possuiSaldo(valor)) {
      return false;
    } else {
      saldo -= valor;
      contaDestino.depositar(valor);

      return true;
    }
  }

  bool saque(double valorDoSaque) {
    if (!possuiSaldo(valorDoSaque)) {
      return false;
    } else {
      saldo -= valorDoSaque;
      return true;
    }
  }

  double depositar(double valorDeposito) {
    saldo += valorDeposito;
    return saldo;
  }
}
