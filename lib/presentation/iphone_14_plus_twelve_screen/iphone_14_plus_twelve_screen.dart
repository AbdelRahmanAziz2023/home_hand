import 'bloc/iphone_14_plus_twelve_bloc.dart';
import 'models/iphone_14_plus_twelve_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone14PlusTwelveScreen extends StatelessWidget {
  const Iphone14PlusTwelveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusTwelveBloc>(
        create: (context) => Iphone14PlusTwelveBloc(Iphone14PlusTwelveState(
            iphone14PlusTwelveModelObj: Iphone14PlusTwelveModel()))
          ..add(Iphone14PlusTwelveInitialEvent()),
        child: Iphone14PlusTwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14PlusTwelveBloc, Iphone14PlusTwelveState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildArrowLeft(context),
                    SizedBox(height: 15.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 129.h),
                            child: Text("lbl_mitchal_marsh".tr,
                                style: theme.textTheme.titleLarge))),
                    SizedBox(height: 1.v),
                    Text("msg_5_years_experience".tr,
                        style: CustomTextStyles.bodyMediumLightblue300),
                    SizedBox(height: 1.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 147.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgShape,
                                      height: 10.v,
                                      width: 8.h,
                                      radius: BorderRadius.circular(1.h),
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 4.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgShape,
                                      height: 10.v,
                                      width: 8.h,
                                      radius: BorderRadius.circular(1.h),
                                      margin: EdgeInsets.only(
                                          left: 6.h, top: 2.v, bottom: 4.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgShape,
                                      height: 10.v,
                                      width: 8.h,
                                      radius: BorderRadius.circular(1.h),
                                      margin: EdgeInsets.only(
                                          left: 6.h, top: 2.v, bottom: 4.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgShape,
                                      height: 10.v,
                                      width: 8.h,
                                      radius: BorderRadius.circular(1.h),
                                      margin: EdgeInsets.only(
                                          left: 6.h, top: 2.v, bottom: 4.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgShape,
                                      height: 10.v,
                                      width: 8.h,
                                      radius: BorderRadius.circular(1.h),
                                      margin: EdgeInsets.only(
                                          left: 6.h, top: 2.v, bottom: 4.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("lbl_4_7".tr,
                                          style: CustomTextStyles
                                              .bodyMediumLightblue300))
                                ]))),
                    SizedBox(height: 3.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_30_00".tr,
                              style: CustomTextStyles.labelLargeDeeporangeA200),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "lbl_h".tr,
                              style: theme.textTheme.bodySmall)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 69.v),
                    _buildOneHundred(context),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 43.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("lbl_review".tr,
                                  style:
                                      CustomTextStyles.bodyMediumLightblue300),
                              Spacer(flex: 53),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("lbl_ongoing".tr,
                                      style: CustomTextStyles
                                          .bodyMediumLightblue300)),
                              Spacer(flex: 46),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Text("lbl_client".tr,
                                      style: CustomTextStyles
                                          .bodyMediumLightblue300))
                            ])),
                    SizedBox(height: 36.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 27.h),
                            child: Text("lbl_description".tr,
                                style: theme.textTheme.titleMedium))),
                    SizedBox(height: 7.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: 325.h,
                            margin: EdgeInsets.only(left: 40.h, right: 62.h),
                            child: Text("msg_lorem_ipsum_is_placeholder".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodyLargeBluegray10001))),
                    SizedBox(height: 49.v),
                    CustomElevatedButton(
                        height: 75.v,
                        text: "lbl_book_now".tr,
                        margin: EdgeInsets.only(left: 51.h, right: 37.h),
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL38,
                        buttonTextStyle: theme.textTheme.headlineSmall!,
                        onPressed: () {
                          onTapBookNow(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return SizedBox(
        height: 408.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 73.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.h, vertical: 43.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftLightBlue90001,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(left: 10.h, bottom: 219.v),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgCurvedBell,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(top: 4.v, bottom: 215.v))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: appTheme.gray40001, width: 3.h),
                      borderRadius: BorderRadiusStyle.circleBorder75),
                  child: Container(
                      height: 150.adaptSize,
                      width: 150.adaptSize,
                      padding: EdgeInsets.all(9.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder75),
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray10001,
                                    borderRadius: BorderRadius.circular(60.h),
                                    border: Border.all(
                                        color: theme.colorScheme.onError
                                            .withOpacity(1),
                                        width: 5.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.img601111,
                            height: 125.adaptSize,
                            width: 125.adaptSize,
                            radius: BorderRadius.circular(62.h),
                            alignment: Alignment.center)
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildOneHundred(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 37.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_100".tr, style: CustomTextStyles.titleLargeRegular),
          Spacer(flex: 53),
          Text("lbl_500".tr, style: CustomTextStyles.titleLargeRegular),
          Spacer(flex: 46),
          Text("lbl_700".tr, style: CustomTextStyles.titleLargeRegular)
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the splachScreenOneScreen when the action is triggered.
  onTapBookNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splachScreenOneScreen,
    );
  }
}
