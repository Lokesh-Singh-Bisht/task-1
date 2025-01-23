import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_task_1/helpers/constants/asset_image.dart';
import 'package:stroll_task_1/helpers/constants/constants.dart';
import 'package:stroll_task_1/models/group_data_model.dart';
import 'package:stroll_task_1/models/profile_data_model.dart';
import 'package:stroll_task_1/themes/colors.dart';
import 'package:stroll_task_1/widgets/group_title_widget.dart';
import 'package:stroll_task_1/widgets/options_widget.dart';
import 'package:stroll_task_1/widgets/profile_question_widget.dart';

class QuestionnaireScreen extends StatefulWidget {
  @override
  State<QuestionnaireScreen> createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  List<String> dummyOptionList = [
    "The peace in the early mornings",
    "The magical golden hours",
    "Wind-down time after dinners",
    "The serenity past midnight"
  ];
  ProfileData dummyProfileData = ProfileData(
      profilePhoto: AppImages.tempProfilePhoto,
      name: "Angelina",
      age: 28,
      question: "What is your favorite time of the day?",
      answer: "Mine is definitely the peace in the morning.");
  GroupData dummyGroupData =
      GroupData(name: "Stroll Bonfire", time: "22h 00m", totalMembers: 103);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeColors.black,
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.transparent,
                  AppThemeColors.black,
                  Colors.transparent,
                ],
              ).createShader(Rect.fromLTRB(0, rect.height, 0, -130));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              fit: BoxFit.cover,
              height: Constants.screenHeight * 0.65,
              width: Constants.screenWidth,
              AppImages.tempBGPhoto,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              GroupTitlewidget(
                groupData: dummyGroupData,
              ),
              Spacer(),
              ProfileQuestionWidget(
                profileData: dummyProfileData,
              ),
              OptionsWidget(optionList: dummyOptionList),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                        .copyWith(top: 0),
                child: Row(
                  children: [
                    Text(
                      "Pick your option.\nSee who has a similar mind.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: AppThemeColors.lightGray,
                          fontSize: 12.0,
                          height: 1.2,
                          letterSpacing: 0.3),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 48,
                        width: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppThemeColors.black,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                                width: 2.2, color: AppThemeColors.purple)),
                        child: SvgPicture.asset(
                          height: 25,
                          width: 25,
                          AppImages.micIcon,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 48,
                          width: 48,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppThemeColors.purple,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            size: 30,
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
