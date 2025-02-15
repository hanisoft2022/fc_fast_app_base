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
    return const Placeholder();
  }
}
