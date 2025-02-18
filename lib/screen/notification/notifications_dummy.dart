import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TTossNotification>[
  TTossNotification(
    type: NotificationType.ttosPay,
    description: '이번주에 영화 한 편 어때요? CGV 할인 쿠폰이 도착했어요.',
    time: DateTime.now().subtract(const Duration(minutes: 27)),
  ),
  TTossNotification(
    type: NotificationType.stock,
    description: '인적분할에 대해 알려드릴게요.',
    time: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  TTossNotification(
    type: NotificationType.walk,
    description: '1,000 걸음 이상 걸었다면 포인트 받으세요.',
    time: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  TTossNotification(
    type: NotificationType.moneyTip,
    description: '유럽 식품 물가가 치솟고 있어요.\n김장한님, 유럽여행에 관심이 있다면 확인해보세요.',
    time: DateTime.now().subtract(const Duration(hours: 8)),
  ),
  TTossNotification(
    type: NotificationType.walk,
    description: '오늘 1,000 걸음을 넘겼어요. 포인트를 받아보세요.',
    time: DateTime.now().subtract(const Duration(hours: 11)),
  ),
  TTossNotification(
    type: NotificationType.luck,
    description: '6월 5일, 행운복권이 도착했어요.',
    time: DateTime.now().subtract(const Duration(hours: 12)),
  ),
  TTossNotification(
    type: NotificationType.people,
    description: '띵동! 월요일 공동구매 보러가기',
    time: DateTime.now().subtract(const Duration(hours: 12)),
  ),
];
