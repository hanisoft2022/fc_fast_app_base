// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class TTossNotification {
  final NotificationType type;
  final DateTime time;
  final String description;
  bool isRead;

  TTossNotification({
    required this.type,
    required this.time,
    required this.description,
    this.isRead = false,
  });
}
