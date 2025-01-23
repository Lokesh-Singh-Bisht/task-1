import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:stroll_task_1/helpers/constants/asset_image.dart';
import 'package:stroll_task_1/themes/colors.dart';
import 'package:stroll_task_1/widgets/badge_icon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key, required this.navigationShell, required this.currentPath});
  final StatefulNavigationShell navigationShell;
  final String currentPath;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeColors.bottomNavBarColor,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: Platform.isIOS ? 30 : 10),
        child: NavigationBar(
          height: 45,
          backgroundColor: AppThemeColors.bottomNavBarColor,
          selectedIndex: widget.navigationShell.currentIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (index) {},
          indicatorColor: Colors.transparent,
          elevation: 0,
          destinations: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: NavigationDestination(
                tooltip: 'Feed screen',
                selectedIcon: BadgeIconWidget(
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    AppImages.pokerCardIcon,
                  ),
                ),
                icon: BadgeIconWidget(
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    AppImages.pokerCardIcon,
                  ),
                ),
                label: "",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: NavigationDestination(
                tooltip: 'Match screen',
                icon: BadgeIconWidget(
                  badgeCount: 0,
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    AppImages.fireIcon,
                  ),
                ),
                selectedIcon: BadgeIconWidget(
                    iconWidget: SvgPicture.asset(
                      height: 28,
                      width: 28,
                      AppImages.fireIcon,
                    ),
                    badgeCount: 0),
                label: "",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: NavigationDestination(
                tooltip: 'Chat screen',
                icon: BadgeIconWidget(
                  badgeCount: 10,
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    AppImages.chatIcon,
                  ),
                ),
                selectedIcon: BadgeIconWidget(
                  badgeCount: 10,
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    AppImages.chatIcon,
                  ),
                ),
                label: "",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: NavigationDestination(
                tooltip: 'Profile screen',
                icon: BadgeIconWidget(
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    colorFilter: ColorFilter.mode(
                        AppThemeColors.bottomNavBarIconColor, BlendMode.srcIn),
                    AppImages.profileIcon,
                  ),
                ),
                selectedIcon: BadgeIconWidget(
                  iconWidget: SvgPicture.asset(
                    height: 28,
                    width: 28,
                    colorFilter: ColorFilter.mode(
                        AppThemeColors.bottomNavBarIconColor, BlendMode.srcIn),
                    AppImages.profileIcon,
                  ),
                ),
                label: "",
              ),
            ),
          ],
        ),
      ),
      body: widget.navigationShell,
    );
  }
}
