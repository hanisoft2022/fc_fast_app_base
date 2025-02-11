import 'package:fast_app_base/common/common.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  final _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          const Gap(10),
          Image.asset('$basePath/icon/ttoss.png', height: 30),
          const Expanded(child: SizedBox()),
          Image.asset('$basePath/icon/map_point.png', height: 30),
          const Gap(10),
          Stack(
            children: [
              Image.asset('$basePath/icon/notification.png', height: 30),
              if (!_showRedDot)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                    ),
                  ),
                )
            ],
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
