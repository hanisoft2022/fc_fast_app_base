import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountTtoss = BankAccount(bank: bankTtoss, balance: 3000000);
final bankAccountShinhan1 = BankAccount(bank: bankShinhan, balance: 3000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 = BankAccount(bank: bankShinhan, balance: 30000000, accountTypeName: '저축예금');
final bankAccountShinhan3 = BankAccount(bank: bankShinhan, balance: 300000000, accountTypeName: '저축예금');
final bankAccountKakao = BankAccount(bank: bankKakao, balance: 7000000, accountHolderName: '입출금통장');

void main() {
  print('안녕');
  print(bankAccounts.toString());
  print(bankAccounts[1].accountTypeName);
}

final List<BankAccount> bankAccounts = [
  bankAccountTtoss,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
];
