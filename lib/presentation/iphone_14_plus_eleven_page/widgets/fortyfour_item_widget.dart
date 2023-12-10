import '../models/fortyfour_item_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FortyfourItemWidget extends StatelessWidget {
  FortyfourItemWidget(
    this.fortyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortyfourItemModel fortyfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 277.v,
        width: 177.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 124.v,
                width: 141.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.primary.withOpacity(1),
                    width: 1.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 9.v),
                    SizedBox(
                      height: 135.v,
                      width: 153.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPexelsPhoto195825,
                            height: 135.v,
                            width: 152.h,
                            radius: BorderRadius.circular(
                              10.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomElevatedButton(
                            height: 12.v,
                            width: 27.h,
                            text: "lbl_4_4".tr,
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 3.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCurvedStar1,
                                height: 10.adaptSize,
                                width: 10.adaptSize,
                              ),
                            ),
                            buttonTextStyle:
                                CustomTextStyles.interLightblue90001,
                            alignment: Alignment.topRight,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                fortyfourItemModelObj.price!,
                                style: CustomTextStyles
                                    .labelLargeDeeporangeA40001_1,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 67.h),
                                child: Text(
                                  fortyfourItemModelObj.offer!,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 14.v),
                          Text(
                            fortyfourItemModelObj.homeCleaning!,
                            style: CustomTextStyles.titleSmallLightblue90001,
                          ),
                          SizedBox(height: 18.v),
                          Text(
                            fortyfourItemModelObj.bySajbAhmed!,
                            style: CustomTextStyles.labelLargeLightblue90001_1,
                          ),
                          SizedBox(height: 10.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
