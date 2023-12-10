import 'bloc/user_bloc.dart';
import 'models/user_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<UserBloc>(
        create: (context) => UserBloc(UserState(userModelObj: UserModel()))
          ..add(UserInitialEvent()),
        child: UserPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 83.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 182.v,
                                width: 252.h,
                                margin: EdgeInsets.only(left: 12.h),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text("lbl_25".tr,
                                              style: theme
                                                  .textTheme.displayLarge)),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 22.v),
                                              child: Text("lbl_mido_walum".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallLightblueA700))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.img601111105x105,
                                          height: 105.adaptSize,
                                          width: 105.adaptSize,
                                          radius: BorderRadius.circular(52.h),
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 20.h))
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("lbl_special_offers".tr,
                                    style:
                                        CustomTextStyles.titleLargeOnError))),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: _buildCurvedLockOn(context,
                                curvedLockOn: ImageConstant.imgCurvedUser1,
                                changePassword: "lbl_edit_profile".tr)),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: _buildCurvedLockOn(context,
                                curvedLockOn: ImageConstant.imgCurvedLockOn,
                                changePassword: "lbl_change_password".tr)),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: _buildCurvedLockOn(context,
                                curvedLockOn: ImageConstant.imgSearch,
                                changePassword: "lbl_payment_method".tr)),
                        SizedBox(height: 31.v),
                        _buildCurvedHeart(context),
                        SizedBox(height: 38.v),
                        _buildArrowRight(context),
                        SizedBox(height: 86.v),
                        Container(
                            height: 90.adaptSize,
                            width: 90.adaptSize,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 22.v),
                            decoration: AppDecoration
                                .gradientLightBlueToLightBlue
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder45),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgShapeOnerror,
                                height: 25.v,
                                width: 24.h,
                                alignment: Alignment.topCenter))
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 18.h, top: 11.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_settings".tr));
  }

  /// Section Widget
  Widget _buildCurvedHeart(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCurvedHeart,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 9.v)),
          Spacer(flex: 32),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("msg_favourite_provider".tr,
                  style: CustomTextStyles.titleLargePrimary)),
          Spacer(flex: 67),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 42.adaptSize,
              width: 42.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildArrowRight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 17.v)),
              Spacer(flex: 17),
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 13.v),
                  child: Text("lbl_logout".tr,
                      style: CustomTextStyles.titleLargePrimary)),
              Spacer(flex: 82),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 42.adaptSize,
                  width: 42.adaptSize)
            ]));
  }

  /// Common widget
  Widget _buildCurvedLockOn(
    BuildContext context, {
    required String curvedLockOn,
    required String changePassword,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: curvedLockOn,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(top: 6.v, bottom: 11.v)),
          Spacer(flex: 30),
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 6.v),
              child: Text(changePassword,
                  style: CustomTextStyles.titleLargePrimary.copyWith(
                      color: theme.colorScheme.primary.withOpacity(1)))),
          Spacer(flex: 69),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 42.adaptSize,
              width: 42.adaptSize)
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
