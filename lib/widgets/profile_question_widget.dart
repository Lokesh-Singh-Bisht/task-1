import 'package:flutter/material.dart';
import 'package:stroll_task_1/helpers/constants/constants.dart';
import 'package:stroll_task_1/models/profile_data_model.dart';
import 'package:stroll_task_1/themes/colors.dart';

class ProfileQuestionWidget extends StatelessWidget {
  const ProfileQuestionWidget({
    super.key,
    required this.profileData,
  });

  final ProfileData profileData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: Constants.screenWidth - 60, //Constraints after padding
          child: Stack(
            children: [
              Positioned(
                left: 30,
                top: 5,
                child: Container(
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppThemeColors.lightBlack.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 33, right: 10),
                    child: Text(
                      "${profileData.name}, ${profileData.age}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppThemeColors.lightBlack
                        .withAlpha((0.9 * 255).toInt()),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      height: 50,
                      width: 50,
                      profileData.profilePhoto,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  width: Constants.screenWidth - 130,
                  child: Text(
                    profileData.question,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.2,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "“${profileData.answer}”",
          style: TextStyle(
            color: AppThemeColors.lavender.withValues(alpha: 0.7),
            fontStyle: FontStyle.italic,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
