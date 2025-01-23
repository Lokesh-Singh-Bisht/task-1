import 'package:flutter/material.dart';
import 'package:stroll_task_1/helpers/utilities.dart';
import 'package:stroll_task_1/themes/colors.dart';

class OptionsWidget extends StatefulWidget {
  const OptionsWidget({
    super.key,
    required this.optionList,
  });
  final List<String> optionList;

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  List<String> optionAlphabetIndex = [];
  int tappedIndex = 0;
  @override
  void initState() {
    generateOptions(widget.optionList.length);
    super.initState();
  }

  void generateOptions(int numberOfOptions) {
    const String alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    if (numberOfOptions <= 0 || numberOfOptions > alphabet.length) {
      lg.e("Go Router on exception section");
      return;
    }

    optionAlphabetIndex =
        List<String>.generate(numberOfOptions, (index) => alphabet[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 3,
        ),
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        itemCount: widget.optionList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              tappedIndex = index;
              setState(() {});
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppThemeColors.darkGrey,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      width: 2,
                      color: tappedIndex == index
                          ? AppThemeColors.purple
                          : Colors.transparent)),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: tappedIndex == index
                            ? AppThemeColors.purple
                            : AppThemeColors.darkGrey,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 1,
                            color: tappedIndex == index
                                ? Colors.transparent
                                : AppThemeColors.lightGray)),
                    child: Text(
                      optionAlphabetIndex[index],
                      style: TextStyle(
                        color: tappedIndex == index
                            ? AppThemeColors.white
                            : AppThemeColors.lightGray,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.optionList[index],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: AppThemeColors.lightGray,
                          fontSize: 14.0,
                          height: 1.2,
                          letterSpacing: 0.3),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
