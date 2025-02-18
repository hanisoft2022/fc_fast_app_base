import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart' hide Notification;

import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:gap/gap.dart';

class NotificationItemWidget extends StatefulWidget {
  final TTossNotification notification;

  const NotificationItemWidget({super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 10.0;
  static const iconWidth = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: widget.notification.isRead ? context.backgroundColor : context.appColors.unreadColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Gap(leftPadding),
              Image.asset(
                widget.notification.type.iconPath,
                width: iconWidth,
              ),
              Text(
                widget.notification.type.name,
                style: TextStyle(color: widget.notification.isRead ? context.appColors.lessImportantText : Colors.white),
              ),
              const Gap(10),
              Text(
                '${widget.notification.time.toString()}분전',
                style: TextStyle(color: widget.notification.isRead ? Colors.black : Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: leftPadding + iconWidth),
            child: Text(
              widget.notification.description,
              style: TextStyle(color: widget.notification.isRead ? Colors.black : Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
