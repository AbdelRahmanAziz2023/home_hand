import 'bloc/homepage_bloc.dart';
import 'models/homepage_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_eleven_page/iphone_14_plus_eleven_page.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/user_page/user_page.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_bottom_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_search_view.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageBloc>(
      create: (context) => HomepageBloc(HomepageState(
        homepageModelObj: HomepageModel(),
      ))
        ..add(HomepageInitialEvent()),
      child: HomepageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 61.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_welcome2".tr,
                    style: CustomTextStyles.headlineSmallPrimary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "msg_service_and_safety".tr,
                    style: CustomTextStyles.labelLargeGray500,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  right: 19.h,
                ),
                child: BlocSelector<HomepageBloc, HomepageState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 31.v),
              _buildSpecialOffers(context),
              SizedBox(height: 14.v),
              _buildTwentyFive(context),
              SizedBox(height: 23.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.lightBlue80002,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 11.adaptSize,
                    width: 11.adaptSize,
                    margin: EdgeInsets.only(left: 12.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCurvedListPointers,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          top: 5.v,
                        ),
                        child: Text(
                          "lbl_categories".tr,
                          style: CustomTextStyles.titleMediumLightblue90002,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildCleaning(context),
              SizedBox(height: 23.v),
              _buildView(context),
              SizedBox(height: 51.v),
              Container(
                height: 90.adaptSize,
                width: 90.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 22.v,
                ),
                decoration: AppDecoration.gradientLightBlueToLightBlue.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder45,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgShapeOnerror,
                  height: 25.v,
                  width: 24.h,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            right: 15.h,
          ),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialOffers(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_special_offers".tr,
              style: CustomTextStyles.titleMediumLightblue90002,
            ),
          ),
          Text(
            "lbl_view_all".tr,
            style: CustomTextStyles.titleMediumLightblue90002,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 10.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_25".tr,
                  style: theme.textTheme.displayLarge,
                ),
                Text(
                  "lbl_special_offers".tr,
                  style: CustomTextStyles.titleLargeOnError,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 155.h,
                  child: Text(
                    "msg_get_dicount_for".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallGray200,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector159x178,
            height: 159.v,
            width: 178.h,
            margin: EdgeInsets.only(top: 13.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCleaning(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: BlocSelector<HomepageBloc, HomepageState,
                TextEditingController?>(
              selector: (state) => state.cleaningController,
              builder: (context, cleaningController) {
                return CustomTextFormField(
                  width: 108.h,
                  controller: cleaningController,
                  hintText: "lbl_cleaning".tr,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical: 35.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
                  filled: true,
                  fillColor: appTheme.deepPurple50,
                );
              },
            ),
          ),
          Spacer(),
          Container(
            height: 91.v,
            width: 108.h,
            margin: EdgeInsets.only(top: 5.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 26.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlinePrimary3.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 53.v),
                        Text(
                          "lbl_repair".tr,
                          style: CustomTextStyles.labelLargeGray500,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot2023,
                  height: 65.v,
                  width: 92.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 6.h),
                ),
              ],
            ),
          ),
          Container(
            height: 96.v,
            width: 108.h,
            margin: EdgeInsets.only(left: 25.h),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 87.v,
                    width: 108.h,
                    decoration: BoxDecoration(
                      color: appTheme.purple50,
                      borderRadius: BorderRadius.circular(
                        16.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: theme.colorScheme.primary,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlumbingRemovebgPreview,
                  height: 74.v,
                  width: 75.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8.v),
                    child: Text(
                      "lbl_plumbing".tr,
                      style: CustomTextStyles.labelLargeGray500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 99.v,
              width: 110.h,
              margin: EdgeInsets.only(bottom: 3.v),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 89.v,
                      width: 110.h,
                      decoration: BoxDecoration(
                        color: appTheme.blue50,
                        borderRadius: BorderRadius.circular(
                          16.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.primary,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgScreenshot202377x90,
                    height: 77.v,
                    width: 90.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 5.h),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 26.h,
                        bottom: 8.v,
                      ),
                      child: Text(
                        "lbl_painting".tr,
                        style: CustomTextStyles.labelLargeGray500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 93.v,
              width: 112.h,
              margin: EdgeInsets.only(top: 9.v),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 91.v,
                      width: 112.h,
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple50,
                        borderRadius: BorderRadius.circular(
                          16.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.primary,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgScreenshot202372x70,
                    height: 72.v,
                    width: 70.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 17.h),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.v),
                      child: Text(
                        "lbl_washing".tr,
                        style: CustomTextStyles.labelLargeGray500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 95.v,
              width: 118.h,
              margin: EdgeInsets.only(
                left: 25.h,
                top: 7.v,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 87.v,
                      width: 108.h,
                      decoration: BoxDecoration(
                        color: appTheme.blue100,
                        borderRadius: BorderRadius.circular(
                          16.h,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.primary,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgWhatsappImage,
                    height: 69.v,
                    width: 118.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 11.v),
                      child: Text(
                        "lbl_sterilization".tr,
                        style: CustomTextStyles.labelLargeGray500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Curvedcalendar:
        return AppRoutes.userPage;
      case BottomBarEnum.Curvedsettings:
        return AppRoutes.iphone14PlusElevenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.userPage:
        return UserPage.builder(context);
      case AppRoutes.iphone14PlusElevenPage:
        return Iphone14PlusElevenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
