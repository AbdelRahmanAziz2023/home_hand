import 'bloc/iphone_14_plus_sixteen_bloc.dart';
import 'models/iphone_14_plus_sixteen_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone14PlusSixteenScreen extends StatelessWidget {
  const Iphone14PlusSixteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusSixteenBloc>(
        create: (context) => Iphone14PlusSixteenBloc(Iphone14PlusSixteenState(
            iphone14PlusSixteenModelObj: Iphone14PlusSixteenModel()))
          ..add(Iphone14PlusSixteenInitialEvent()),
        child: Iphone14PlusSixteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14PlusSixteenBloc, Iphone14PlusSixteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(29.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 108.h),
                            child: Text("lbl_order_id_5253".tr,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 43.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCurvedPinpaperFilled,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 18.h, top: 3.v),
                              child: Text("lbl_order_details".tr,
                                  style: CustomTextStyles.titleMediumPrimary))
                        ]),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("msg_clean_for_full_house".tr,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Text("msg_a_clean_for_all".tr,
                                style: CustomTextStyles
                                    .bodyMediumSecondaryContainer)),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(right: 109.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCurvedLocation1,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(bottom: 1.v)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 17.h, top: 5.v),
                                      child: Text(
                                          "msg_flat7_elmsala_street15_fayoum"
                                              .tr,
                                          style: theme.textTheme.bodyLarge))
                                ])),
                        SizedBox(height: 15.v),
                        Row(children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgCurvedClockLightBlueA700,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 18.h, top: 3.v),
                              child: Text("msg_08_30_am_22_may".tr,
                                  style: theme.textTheme.bodyLarge))
                        ]),
                        SizedBox(height: 26.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCurvedListRight,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h, top: 2.v),
                              child: Text("lbl_price_details".tr,
                                  style: CustomTextStyles.titleMediumPrimary))
                        ]),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 33.h),
                            child: Row(children: [
                              Text("msg_clean_for_full_house".tr,
                                  style: theme.textTheme.bodyMedium),
                              Padding(
                                  padding: EdgeInsets.only(left: 71.h),
                                  child: Text("lbl_800".tr,
                                      style: theme.textTheme.bodyMedium))
                            ])),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 33.h, right: 104.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_for_worker".tr,
                                      style: theme.textTheme.bodyMedium),
                                  Text("lbl_720".tr,
                                      style: theme.textTheme.bodyMedium)
                                ])),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 33.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("msg_for_servicsesapp".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding: EdgeInsets.only(left: 89.h),
                                  child: Text("lbl_80".tr,
                                      style: theme.textTheme.bodyMedium))
                            ])),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 30.h, right: 104.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("lbl_payed_with".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  Text("lbl_cash".tr,
                                      style: theme.textTheme.bodyMedium)
                                ])),
                        SizedBox(height: 28.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFile,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h, top: 2.v),
                              child: Text("lbl_task_notes".tr,
                                  style: CustomTextStyles.titleMediumPrimary))
                        ]),
                        SizedBox(height: 22.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 328.h,
                                margin: EdgeInsets.only(left: 33.h, right: 9.h),
                                child: Text("msg_book_your_professional".tr,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleMediumGray50001))),
                        SizedBox(height: 83.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, right: 8.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomElevatedButton(
                                          height: 43.v,
                                          width: 165.h,
                                          text: "lbl_accepted".tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillLightBlueA,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumOnErrorMedium),
                                      CustomElevatedButton(
                                          height: 43.v,
                                          width: 165.h,
                                          text: "lbl_rejected".tr,
                                          margin: EdgeInsets.only(left: 12.h),
                                          buttonStyle:
                                              CustomButtonStyles.fillRedA,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumOnErrorMedium)
                                    ]))),
                        SizedBox(height: 5.v)
                      ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 99.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftLightBlue90001,
            margin: EdgeInsets.only(left: 15.h, top: 51.v, bottom: 18.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitle(
            text: "lbl_order_details".tr,
            margin: EdgeInsets.only(left: 12.h, top: 50.v, bottom: 18.v)),
        styleType: Style.bgShadow);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
