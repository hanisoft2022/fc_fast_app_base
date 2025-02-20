import 'package:fast_app_base/common/constant/app_colors.dart';
import 'package:fast_app_base/screen/notification/d_notification.dart';
import 'package:fast_app_base/screen/notification/notifications_dummy.dart';

import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkGrey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(title: Text('알림'), centerTitle: false),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                onTap: () {
                  // ! 아래 주석처리된 코드는 강사 코드
                  // NotificationDialog().show();
                  showDialog(
                    context: context,
                    builder: (context) => const NotificationDialog(),
                  );
                  print('카드 클릭됨');
                },
              ),
              childCount: notificationDummies.length,
            ),
          ),
        ],
      ),
    );
  }
}
