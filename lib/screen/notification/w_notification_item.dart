import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart' hide Notification;

import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:gap/gap.dart';

import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TTossNotification notification;
  final VoidCallback onTap;

  const NotificationItemWidget({super.key, required this.notification, required this.onTap});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const iconWidth = 25.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        color: widget.notification.isRead ? AppColors.veryDarkGrey : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  widget.notification.type.iconPath,
                  width: iconWidth,
                ),
                Text(
                  widget.notification.type.name,
                  style: TextStyle(color: widget.notification.isRead ? context.appColors.lessImportantText : Colors.white),
                ),
                const Expanded(child: Gap(0)),
                Text(
                  timeago.format(widget.notification.time, locale: context.locale.languageCode),
                  style: TextStyle(color: context.appColors.lessImportantText, fontSize: 13),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: iconWidth),
              child: Text(
                widget.notification.description,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
