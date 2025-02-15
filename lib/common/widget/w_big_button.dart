import 'package:fast_app_base/common/widget/w_rounder_container.dart';

import 'package:flutter/material.dart';

class BigButtonWidget extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const BigButtonWidget({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RoundedContainerWidget(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name.toString(), style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        const Icon(Icons.keyboard_arrow_right_sharp, color: Colors.white)
      ],
    ));
  }
}
