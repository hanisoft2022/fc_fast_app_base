import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounder_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccountModel account;

  const BankAccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.accountTypeName ?? "${account.bank.name} 통장",
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  '${account.balance}원',
                  style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        RoundedContainerWidget(
          radius: 10,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          backgroundColor: Colors.grey,
          child: Text(
            '송금',
            style: TextStyle(color: context.appColors.buttonBackground, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
