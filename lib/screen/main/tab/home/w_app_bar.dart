import 'package:fast_app_base/common/common.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
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
            ],
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
