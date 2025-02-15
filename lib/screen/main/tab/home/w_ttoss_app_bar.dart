import 'package:fast_app_base/common/common.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:badges/badges.dart' as badges;

class TtossAppBarWidget extends StatefulWidget {
  static const double appBarHeight = 60;
  const TtossAppBarWidget({super.key});

  @override
  State<TtossAppBarWidget> createState() => _TtossAppBarWidgetState();
}

class _TtossAppBarWidgetState extends State<TtossAppBarWidget> {
  // * custom badge field
  bool _showRedDot = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TtossAppBarWidget.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          const Gap(10),
          Image.asset('$basePath/icon/ttoss.png', height: 30),
          const Expanded(child: SizedBox()),
          Image.asset('$basePath/icon/map_point.png', height: 30),
          const Gap(10),
          // ! testing
          // * custom badge
          // Tap(
          //   onTap: () => setState(() => _showRedDot = !_showRedDot),
          //   child: Stack(
          //     children: [
          //       Image.asset('$basePath/icon/notification.png', height: 30),
          //       if (_showRedDot)
          //         Positioned.fill(
          //           child: Align(
          //             alignment: Alignment.topRight,
          //             child: Container(
          //               width: 6,
          //               height: 6,
          //               decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          //             ),
          //           ),
          //         )
          //     ],
          //   ),
          // ),
          // ! testing
          // * 'badges' package
          InkWell(
            onTap: () => setState(() => _showRedDot = !_showRedDot),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 0, end: -4),
              showBadge: _showRedDot,
              onTap: () {},
              badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red, padding: EdgeInsets.all(4)),
              child: Image.asset('$basePath/icon/notification.png', height: 30),
              // const Icon(Icons.notifications, color: Color.fromARGB(255, 98, 98, 107), size: 30),
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
