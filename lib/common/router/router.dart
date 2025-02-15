import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/benefit/f_benefit.dart';
import 'package:fast_app_base/screen/main/tab/favorite/f_favorite.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';

import 'package:fast_app_base/screen/main/tab/stock/f_stock.dart';
import 'package:fast_app_base/screen/main/tab/ttospay/f_ttospay.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainScreen(),
  ),
  GoRoute(
    path: '/home',
    builder: (context, state) => const HomeFragment(),
  ),
  GoRoute(
    path: '/ttospay',
    builder: (context, state) => const FTtospayFragment(),
  ),
  GoRoute(
    path: '/stock',
    builder: (context, state) => const StockFragment(),
  ),
  GoRoute(
    path: '/favorite',
    builder: (context, state) => const FavoriteFragment(),
  ),
  GoRoute(
    path: '/benefit',
    builder: (context, state) => const BenefitFragment(),
  ),
  GoRoute(
    path: '/notification',
    builder: (context, state) => const NotificationScreen(),
  ),
]);
