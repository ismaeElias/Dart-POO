import '../lib/cliente.dart';
import '../lib/contaCorrente.dart';

void main() {
  ContaCorrente conta = ContaCorrente();
  ContaCorrente contaDestino = ContaCorrente();

  Cliente ismael = Cliente()
    ..nome = 'Ismael'
    ..cpf = '111.111.111-22'
    ..profissao = 'dart';

  conta.titular = ismael;

  print(conta.titular.profissao);
}
