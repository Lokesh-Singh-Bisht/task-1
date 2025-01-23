import 'package:flutter/material.dart';
import 'package:stroll_task_1/themes/colors.dart';

class BadgeIconWidget extends StatelessWidget {
  const BadgeIconWidget({super.key, required this.iconWidget, this.badgeCount});
  final int? badgeCount;
  final Widget iconWidget;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        iconWidget,
        if (badgeCount != null)
          Positioned(
              right: -10,
              child: Container(
                height: 13,
                width: 16,
                decoration: BoxDecoration(
                    color: AppThemeColors.mediumPurple,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 1.4, color: AppThemeColors.bottomNavBarColor)),
                child: Text(
                  badgeCount == 0 ? "" : "$badgeCount",
                  style: TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.1,
                      color: AppThemeColors.blackTextColor),
                  textAlign: TextAlign.center,
                ),
              ))
      ],
    );
  }
}
