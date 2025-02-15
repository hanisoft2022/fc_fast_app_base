import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/common/widget/w_rounder_container.dart';

import 'package:fast_app_base/screen/dialog/d_message.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/home/bank_accounts_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/w_bank_account.dart';
import 'package:fast_app_base/screen/main/tab/home/w_ttoss_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../dialog/d_color_bottom.dart';
import '../../../dialog/d_confirm.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: context.appColors.seedColor.getMaterialColorValues[100],
        child: Stack(
          children: [
            RefreshIndicator(
              edgeOffset: TtossAppBarWidget.appBarHeight,
              onRefresh: () async {
                await Future.delayed(
                  const Duration(seconds: 1),
                );
              },
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.only(
                    // ! 갑자기 아래 top 아규먼트 있으니까 추가로 여백 생김. stack 위젯 안에 있는거라 필요한데 왜 주석처리해야 오히려 딱 맞지..?
                    // ! 주석처리해야 정상작동하니까 일단 냅두자.
                    // top: TtossAppBarWidget.appBarHeight,
                    bottom: MainScreenState.bottomNavigationBarHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: Column(
                    children: [
                      const Gap(TtossAppBarWidget.appBarHeight),
                      BigButtonWidget(
                        name: '토스뱅크',
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Dialog(
                              // ! 10강이나 9강 확인. 10강에서는 탭하니까 갑자기 이쁜 다이얼로그가 뜨네;;
                              child: Text('토스뱅크 누름'),
                            ),
                          );
                        },
                      ),
                      const Gap(4),
                      RoundedContainerWidget(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('자산', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                            const Gap(4),
                            ...bankAccounts.map((e) => BankAccountWidget(account: e)).toList(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const TtossAppBarWidget(),
          ],
        ));
  }

  void showSnackbar(BuildContext context) {
    context.showSnackbar('snackbar 입니다.',
        extraButton: Tap(
          onTap: () {
            context.showErrorSnackbar('error');
          },
          child: '에러 보여주기 버튼'.text.white.size(13).make().centered().pSymmetric(h: 10, v: 5),
        ));
  }

  Future<void> showConfirmDialog(BuildContext context) async {
    final confirmDialogResult = await ConfirmDialog(
      '오늘 기분이 좋나요?',
      buttonText: "네",
      cancelButtonText: "아니오",
    ).show();
    debugPrint(confirmDialogResult?.isSuccess.toString());

    confirmDialogResult?.runIfSuccess((data) {
      ColorBottomSheet(
        '❤️',
        context: context,
        backgroundColor: Colors.yellow.shade200,
      ).show();
    });

    confirmDialogResult?.runIfFailure((data) {
      ColorBottomSheet(
        '❤️힘내여',
        backgroundColor: Colors.yellow.shade300,
        textColor: Colors.redAccent,
      ).show();
    });
  }

  Future<void> showMessageDialog() async {
    final result = await MessageDialog("안녕하세요").show();
    debugPrint(result.toString());
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }
}
