import 'bloc/order_page_bloc.dart';
import 'models/order_page_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_eleven_page/iphone_14_plus_eleven_page.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/user_page/user_page.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_bottom_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrderPageScreen extends StatelessWidget {
  OrderPageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<OrderPageBloc>(
        create: (context) =>
            OrderPageBloc(OrderPageState(orderPageModelObj: OrderPageModel()))
              ..add(OrderPageInitialEvent()),
        child: OrderPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OrderPageBloc, OrderPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 9.h),
                  child: Column(children: [
                    SizedBox(height: 22.v),
                    _buildCompleted(context),
                    SizedBox(height: 7.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 127.h,
                            child: Divider(
                                color: theme.colorScheme.primary.withOpacity(1),
                                indent: 25.h))),
                    SizedBox(height: 42.v),
                    _buildEighteen(context),
                    SizedBox(height: 18.v),
                    _buildViewDetails(context)
                  ])),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 22.h, right: 17.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 13.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_orders".tr));
  }

  /// Section Widget
  Widget _buildCompleted(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 5.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_completed".tr, style: CustomTextStyles.titleLargeCyan900),
          Spacer(flex: 35),
          Text("lbl_pending".tr, style: theme.textTheme.titleLarge),
          Spacer(flex: 64),
          Text("lbl_cancelled".tr, style: theme.textTheme.titleLarge)
        ]));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 7.h, right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
        decoration: AppDecoration.outlineBluegray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h, right: 7.h),
              child: _buildSarahJones(context,
                  sarahJones: "lbl_sarah_jones".tr,
                  email: "msg_sarajons44_gmail_com".tr,
                  image: ImageConstant.imgCurvedStar1Yellow500,
                  fortyFour: "lbl_4_4".tr)),
          SizedBox(height: 21.v),
          Divider(
              color: theme.colorScheme.errorContainer,
              indent: 21.h,
              endIndent: 3.h),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: _buildSarahJones1(context,
                  sarahJones: "lbl_sarah_jones".tr,
                  priceDetails: "lbl_price_details".tr)),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(left: 21.h, right: 4.h),
              child: _buildCurvedCalendar(context,
                  fridayJuneh: "msg_friday_june_25h".tr,
                  price: "msg_60_2_hours".tr)),
          SizedBox(height: 3.v),
          Padding(
              padding: EdgeInsets.only(left: 21.h, right: 7.h),
              child: _buildCurvedClock(context,
                  time: "lbl_02_30_pm".tr, price: "lbl_120".tr)),
          SizedBox(height: 38.v),
          CustomElevatedButton(
              height: 43.v,
              width: 132.h,
              text: "lbl_view_details".tr,
              margin: EdgeInsets.only(left: 33.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
              buttonTextStyle: CustomTextStyles.titleSmallBold,
              alignment: Alignment.centerLeft),
          SizedBox(height: 17.v)
        ]));
  }

  /// Section Widget
  Widget _buildViewDetails(BuildContext context) {
    return SizedBox(
        height: 362.v,
        width: 402.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v),
                  decoration: AppDecoration.outlineBluegray10001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10.h, right: 7.h),
                        child: _buildSarahJones(context,
                            sarahJones: "lbl_sarah_jones".tr,
                            email: "msg_sarajons44_gmail_com".tr,
                            image: ImageConstant.imgCurvedStar1Yellow50017x19,
                            fortyFour: "lbl_4_4".tr)),
                    SizedBox(height: 19.v),
                    Divider(
                        color: theme.colorScheme.errorContainer,
                        indent: 21.h,
                        endIndent: 3.h),
                    SizedBox(height: 18.v),
                    Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: _buildSarahJones1(context,
                            sarahJones: "lbl_sarah_jones".tr,
                            priceDetails: "lbl_price_details".tr)),
                    SizedBox(height: 12.v),
                    Padding(
                        padding: EdgeInsets.only(left: 21.h, right: 4.h),
                        child: _buildCurvedCalendar(context,
                            fridayJuneh: "msg_friday_june_25h".tr,
                            price: "msg_60_2_hours".tr)),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.only(left: 21.h, right: 7.h),
                        child: _buildCurvedClock(context,
                            time: "lbl_02_30_pm".tr, price: "lbl_120".tr)),
                    SizedBox(height: 34.v),
                    CustomElevatedButton(
                        height: 39.v,
                        width: 132.h,
                        text: "lbl_view_details".tr,
                        margin: EdgeInsets.only(left: 33.h),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL12,
                        buttonTextStyle: CustomTextStyles.titleSmallBold,
                        alignment: Alignment.centerLeft),
                    SizedBox(height: 15.v)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 90.adaptSize,
                  width: 90.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 22.v),
                  decoration: AppDecoration.gradientLightBlueToLightBlue
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder45),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgShapeOnerror,
                      height: 25.v,
                      width: 24.h,
                      alignment: Alignment.topCenter)))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildSarahJones(
    BuildContext context, {
    required String sarahJones,
    required String email,
    required String image,
    required String fortyFour,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.img60111256x61,
              height: 56.v,
              width: 61.h,
              radius: BorderRadius.circular(28.h),
              margin: EdgeInsets.only(top: 8.v)),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 20.v, bottom: 11.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(sarahJones,
                        style: theme.textTheme.titleMedium!
                            .copyWith(color: appTheme.lightBlueA700)),
                    Text(email,
                        style: CustomTextStyles.labelLargeTeal900
                            .copyWith(color: appTheme.teal900))
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: image,
              height: 17.v,
              width: 19.h,
              margin: EdgeInsets.only(bottom: 47.v)),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 45.v),
              child: Text(fortyFour,
                  style: CustomTextStyles.labelLargeLightblue90001
                      .copyWith(color: appTheme.lightBlue90001)))
        ]);
  }

  /// Common widget
  Widget _buildSarahJones1(
    BuildContext context, {
    required String sarahJones,
    required String priceDetails,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(sarahJones,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.lightBlueA700))),
      Text(priceDetails,
          style: theme.textTheme.titleMedium!
              .copyWith(color: appTheme.lightBlueA700))
    ]);
  }

  /// Common widget
  Widget _buildCurvedCalendar(
    BuildContext context, {
    required String fridayJuneh,
    required String price,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgCurvedCalendarPrimarycontainer,
              height: 21.v,
              width: 24.h),
          Padding(
              padding: EdgeInsets.only(left: 23.h, top: 2.v),
              child: Text(fridayJuneh,
                  style: CustomTextStyles.titleSmallGray50002
                      .copyWith(color: appTheme.gray50002))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text(price,
                  style: CustomTextStyles.labelLargeGray50002
                      .copyWith(color: appTheme.gray50002)))
        ]);
  }

  /// Common widget
  Widget _buildCurvedClock(
    BuildContext context, {
    required String time,
    required String price,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgCurvedClock,
              height: 21.v,
              width: 24.h,
              margin: EdgeInsets.only(top: 5.v)),
          Padding(
              padding: EdgeInsets.only(left: 23.h, top: 7.v),
              child: Text(time,
                  style: CustomTextStyles.titleSmallGray50002
                      .copyWith(color: appTheme.gray50002))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 10.v),
              child: Text(price,
                  style: CustomTextStyles.titleSmallRedA700b5
                      .copyWith(color: appTheme.redA700B5)))
        ]);
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
