import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  final String? accountNumber;
  final String? accountHolderName;
  int balance;
  final String? accountTypeName;

  BankAccount({
    required this.bank,
    this.accountNumber,
    this.accountHolderName,
    required this.balance,
    this.accountTypeName,
  });
}
