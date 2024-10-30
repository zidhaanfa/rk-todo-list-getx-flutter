import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/my_theme.dart';
import '../config/config.dart';
import 'Custom_text.dart';

class CustomCard1 extends StatelessWidget {
  CustomCard1({
    Key? key,
    required this.title,
    this.bottomWidget,
    required this.time,
    required this.part,
  }) : super(key: key);

  String title;
  Widget? bottomWidget;
  String time;
  String part;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
        left: 12.0,
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            color: MyTheme.theme.dividerColor,
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: MyTheme.theme.colorScheme.primary.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                  ),
                ),
                child: CustomText(
                  text: '$part',
                  fontType: FontType.titleSmall,
                  colorText: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/person1.png',
                            width: 0.25.sw,
                            height: 0.1.sh,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5),
                        child: Container(
                          width: 0.5.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: title,
                                fontType: FontType.titleMedium,
                                weight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  //icon timer and text
                                  Icon(
                                    Icons.timer,
                                    color: MyTheme.theme.colorScheme.primary,
                                    size: 20,
                                  ),
                                  CustomText(
                                    text: time,
                                    fontType: FontType.bodyMedium,
                                    weight: FontWeight.normal,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  bottomWidget ?? Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
