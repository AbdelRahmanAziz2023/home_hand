import 'bloc/iphone_14_plus_fifteen_bloc.dart';
import 'models/iphone_14_plus_fifteen_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone14PlusFifteenScreen extends StatelessWidget {
  const Iphone14PlusFifteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusFifteenBloc>(
        create: (context) => Iphone14PlusFifteenBloc(Iphone14PlusFifteenState(
            iphone14PlusFifteenModelObj: Iphone14PlusFifteenModel()))
          ..add(Iphone14PlusFifteenInitialEvent()),
        child: Iphone14PlusFifteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14PlusFifteenBloc, Iphone14PlusFifteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.h, vertical: 29.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 112.h),
                            child: Text("lbl_order_id_5253".tr,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(height: 43.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCurvedPinpaperFilled,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 18.h, top: 3.v),
                                  child: Text("lbl_order_details".tr,
                                      style:
                                          CustomTextStyles.titleMediumPrimary))
                            ])),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 46.h),
                            child: Text("msg_clean_for_full_house".tr,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 11.v),
                        Padding(
                            padding: EdgeInsets.only(left: 46.h),
                            child: Text("msg_a_clean_for_all".tr,
                                style: CustomTextStyles
                                    .bodyMediumSecondaryContainer)),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
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
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCurvedClockLightBlueA700,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 18.h, top: 3.v),
                                  child: Text("msg_08_30_am_22_may".tr,
                                      style: theme.textTheme.bodyLarge))
                            ])),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(right: 96.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.img60111230x30,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                      radius: BorderRadius.circular(15.h),
                                      margin: EdgeInsets.only(bottom: 63.v)),
                                  Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 15.h, top: 5.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_ramy_said".tr,
                                                    style: theme
                                                        .textTheme.titleMedium),
                                                SizedBox(height: 4.v),
                                                Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShapeYellow500,
                                                      height: 15.adaptSize,
                                                      width: 15.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              1.h),
                                                      margin: EdgeInsets.only(
                                                          bottom: 1.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.h),
                                                      child: Text(
                                                          "lbl_6_reviews".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumLightblue300))
                                                ]),
                                                SizedBox(height: 11.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        width: 179.h,
                                                        margin: EdgeInsets.only(
                                                            left: 55.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Card(
                                                                  clipBehavior: Clip
                                                                      .antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  color: appTheme
                                                                      .lightBlueA700,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder15),
                                                                  child: Container(
                                                                      height: 27.v,
                                                                      width: 26.h,
                                                                      padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 6.v),
                                                                      decoration: AppDecoration.fillLightBlueA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                                      child: Stack(alignment: Alignment.topRight, children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                height: 15.v,
                                                                                width: 14.h,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.h), border: Border.all(color: theme.colorScheme.onError.withOpacity(1), width: 2.h)))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .topRight,
                                                                            child: Container(
                                                                                height: 7.v,
                                                                                width: 6.h,
                                                                                decoration: BoxDecoration(color: appTheme.lightBlueA700, borderRadius: BorderRadius.circular(3.h), border: Border.all(color: theme.colorScheme.onError.withOpacity(1), width: 1.h))))
                                                                      ]))),
                                                              CustomIconButton(
                                                                  height: 27.v,
                                                                  width: 26.h,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(6
                                                                              .h),
                                                                  decoration:
                                                                      IconButtonStyleHelper
                                                                          .fillGray,
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup53))
                                                            ]))),
                                                SizedBox(height: 2.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height: 7.v,
                                                        width: 156.h,
                                                        margin: EdgeInsets.only(
                                                            right: 9.h),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom: 2
                                                                              .v),
                                                                      child: SizedBox(
                                                                          width: 151
                                                                              .h,
                                                                          child:
                                                                              Divider(color: theme.colorScheme.onPrimaryContainer)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom: 1
                                                                              .v),
                                                                      child: SizedBox(
                                                                          width: 127
                                                                              .h,
                                                                          child: Divider(
                                                                              color: appTheme.lightBlueA700,
                                                                              indent: 8.h)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Container(
                                                                      height:
                                                                          7.v,
                                                                      width:
                                                                          6.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .lightBlueA700,
                                                                          borderRadius: BorderRadius.circular(3
                                                                              .h),
                                                                          border: Border.all(
                                                                              color: theme.colorScheme.onError.withOpacity(1),
                                                                              width: 1.h)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Container(
                                                                      height:
                                                                          7.v,
                                                                      width:
                                                                          6.h,
                                                                      decoration: BoxDecoration(
                                                                          color: appTheme
                                                                              .gray400,
                                                                          borderRadius: BorderRadius.circular(3
                                                                              .h),
                                                                          border: Border.all(
                                                                              color: theme.colorScheme.onError.withOpacity(1),
                                                                              width: 1.h))))
                                                            ])))
                                              ])))
                                ])),
                        SizedBox(height: 6.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 84.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("lbl_order_placed".tr,
                                              style: CustomTextStyles
                                                  .labelMediumGray800)),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text("lbl_complete".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray800))
                                    ]))),
                        SizedBox(height: 39.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCurvedListRight,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(left: 9.h, top: 2.v),
                                  child: Text("lbl_price_details".tr,
                                      style:
                                          CustomTextStyles.titleMediumPrimary))
                            ])),
                        SizedBox(height: 15.v),
                        Padding(
                            padding: EdgeInsets.only(left: 37.h),
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
                            padding: EdgeInsets.only(left: 37.h, right: 108.h),
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
                            padding: EdgeInsets.only(left: 37.h),
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
                            padding: EdgeInsets.only(left: 34.h, right: 108.h),
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
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgFile,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(left: 9.h, top: 2.v),
                                  child: Text("lbl_task_notes".tr,
                                      style:
                                          CustomTextStyles.titleMediumPrimary))
                            ])),
                        SizedBox(height: 22.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 328.h,
                                margin:
                                    EdgeInsets.only(left: 37.h, right: 13.h),
                                child: Text("msg_book_your_professional".tr,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleMediumGray50001))),
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
