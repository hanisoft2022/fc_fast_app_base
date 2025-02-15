import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainerWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final double? radius;

  const RoundedContainerWidget({
    super.key,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor ?? context.appColors.roundedLayoutBackground,
        borderRadius: BorderRadius.circular(radius ?? 20),
      ),
      child: child,
    );
  }
}
