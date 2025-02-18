// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

class TTossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  TTossNotification({
    required this.type,
    required this.description,
    required this.time,
    this.isRead = false,
  });
}
