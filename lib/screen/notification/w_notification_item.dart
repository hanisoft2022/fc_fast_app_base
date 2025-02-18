import 'package:flutter/material.dart' hide Notification;

import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

class NotificationItemWidget extends StatefulWidget {
  final TTossNotification notification;

  const NotificationItemWidget({super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.notification.isRead ? Colors.grey : Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(widget.notification.type.iconPath),
              Text(widget.notification.type.name),
              Text('${widget.notification.time.toString()}분전'),
            ],
          ),
          Text(widget.notification.description),
        ],
      ),
    );
  }
}
