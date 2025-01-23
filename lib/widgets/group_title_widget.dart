import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_task_1/helpers/constants/asset_image.dart';

import 'package:stroll_task_1/models/group_data_model.dart';
import 'package:stroll_task_1/themes/colors.dart';

class GroupTitlewidget extends StatelessWidget {
  const GroupTitlewidget({
    super.key,
    required this.groupData,
  });

  final GroupData groupData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              groupData.name,
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.w700,
                color: AppThemeColors.lightPurple,
                shadows: [
                  Shadow(
                    offset: Offset(0, 2.0),
                    blurRadius: 5.0,
                    color: AppThemeColors.black.withValues(alpha: 0.25),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppThemeColors.lightPurple,
              size: 25,
              shadows: [
                Shadow(
                  offset: Offset(0, 1.0),
                  blurRadius: 1.0,
                  color: AppThemeColors.black.withValues(alpha: 0.2),
                ),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 0.3,
                    spreadRadius: -1.5,
                    color: AppThemeColors.black.withValues(alpha: 0.07),
                  ),
                ],
              ),
              child: SvgPicture.asset(
                height: 15,
                width: 15,
                AppImages.watchIcon,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              groupData.time,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: AppThemeColors.white,
                shadows: [
                  Shadow(
                    offset: Offset(0, 2),
                    blurRadius: 2.0,
                    color: AppThemeColors.black.withValues(alpha: 0.2),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 0.3,
                    spreadRadius: -1.5,
                    color: AppThemeColors.black.withValues(alpha: 0.07),
                  ),
                ],
              ),
              child: SvgPicture.asset(
                height: 15,
                width: 15,
                AppImages.profileIcon,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "${groupData.totalMembers}",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: AppThemeColors.white,
                shadows: [
                  Shadow(
                    offset: Offset(0, 2),
                    blurRadius: 2.0,
                    color: AppThemeColors.black.withValues(alpha: 0.2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
