import 'bloc/iphone_14_plus_six_bloc.dart';
import 'models/iphone_14_plus_six_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14PlusSixScreen extends StatelessWidget {
  const Iphone14PlusSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusSixBloc>(
      create: (context) => Iphone14PlusSixBloc(Iphone14PlusSixState(
        iphone14PlusSixModelObj: Iphone14PlusSixModel(),
      ))
        ..add(Iphone14PlusSixInitialEvent()),
      child: Iphone14PlusSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone14PlusSixBloc, Iphone14PlusSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWelcome(context),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 44.h),
                    child: Text(
                      "lbl_log_in2".tr,
                      style: CustomTextStyles.headlineLargeLightblue900,
                    ),
                  ),
                  SizedBox(height: 39.v),
                  Padding(
                    padding: EdgeInsets.only(left: 64.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorGray300,
                          height: 13.v,
                          width: 15.h,
                          margin: EdgeInsets.symmetric(vertical: 5.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "lbl_email".tr,
                            style: CustomTextStyles.titleLargeBluegray10001,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      color: appTheme.blueGray100Ee01,
                      indent: 58.h,
                      endIndent: 57.h,
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 41.v,
                      width: 312.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: 18.v,
                                        width: 14.h,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 3.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Text(
                                          "lbl_password".tr,
                                          style: CustomTextStyles
                                              .titleLargeBluegray10001,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Divider(
                                  color: appTheme.blueGray100,
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 9.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 57.h),
                      child: Text(
                        "lbl_forget_password".tr,
                        style: CustomTextStyles.titleSmallBluegray10001,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildLogIn(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWelcome(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 539.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 118.v,
                width: 72.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 31.v),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 131.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder23,
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup101,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 196.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_welcome".tr,
                              style: CustomTextStyles.headlineLargeRegular,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_back".tr,
                              style: CustomTextStyles.headlineLargeRegular,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle10,
                        height: 118.v,
                        width: 85.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        margin: EdgeInsets.only(
                          top: 9.v,
                          bottom: 148.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 118.v,
                width: 68.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 19.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 96.v,
                width: 85.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 11.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 118.v,
                width: 85.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 67.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 118.v,
                width: 85.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 102.v,
                  right: 96.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 118.v,
                width: 85.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 104.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 118.v,
                width: 85.h,
                radius: BorderRadius.circular(
                  15.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 103.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogIn(BuildContext context) {
    return CustomOutlinedButton(
      height: 70.v,
      text: "lbl_log_in2".tr,
      margin: EdgeInsets.only(
        left: 38.h,
        right: 37.h,
        bottom: 33.v,
      ),
      buttonStyle: CustomButtonStyles.outlineLightBlueFb,
      buttonTextStyle: CustomTextStyles.titleLargeGray50,
    );
  }
}
