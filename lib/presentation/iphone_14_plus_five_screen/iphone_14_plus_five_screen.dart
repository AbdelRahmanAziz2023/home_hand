import 'bloc/iphone_14_plus_five_bloc.dart';
import 'models/iphone_14_plus_five_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone14PlusFiveScreen extends StatelessWidget {
  const Iphone14PlusFiveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusFiveBloc>(
        create: (context) => Iphone14PlusFiveBloc(Iphone14PlusFiveState(
            iphone14PlusFiveModelObj: Iphone14PlusFiveModel()))
          ..add(Iphone14PlusFiveInitialEvent()),
        child: Iphone14PlusFiveScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14PlusFiveBloc, Iphone14PlusFiveState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: SizedBox(
                  height: mediaQueryData.size.height,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 22.h, vertical: 77.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgGroup16),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 40.v),
                                  _buildFaceIdOne(context),
                                  SizedBox(height: 16.v),
                                  _buildFifteen(context)
                                ]))),
                    _buildFourteen(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildFaceIdOne(BuildContext context) {
    return SizedBox(
        height: 396.v,
        width: 366.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 124.v,
                  width: 141.h,
                  margin: EdgeInsets.only(bottom: 34.v),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: theme.colorScheme.primary.withOpacity(1),
                          width: 1.h)))),
          CustomImageView(
              imagePath: ImageConstant.img65884090RemovebgPreview,
              height: 396.v,
              width: 348.h,
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
            onTap: () {
              onTapFifteen(context);
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 20.v),
                decoration: AppDecoration.outlineOnError2
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder23),
                child: Row(mainAxisSize: MainAxisSize.max, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup6,
                      height: 29.v,
                      width: 33.h,
                      margin: EdgeInsets.only(top: 1.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h, top: 4.v),
                      child: Text("msg_log_in_with_face".tr,
                          style: CustomTextStyles.titleLargeGray50))
                ]))));
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
            onTap: () {
              onTapFourteen(context);
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(37.h, 657.v, 37.h, 5.v),
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 20.v),
                decoration: AppDecoration.outlineOnError2
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder23),
                child: Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorOnerror,
                      height: 27.v,
                      width: 31.h,
                      margin: EdgeInsets.only(top: 3.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 32.h, top: 3.v),
                      child: Text("msg_log_in_with_email".tr,
                          style: CustomTextStyles.titleLargeOnError))
                ]))));
  }

  /// Navigates to the iphone14PlusSevenScreen when the action is triggered.
  onTapFifteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14PlusSevenScreen,
    );
  }

  /// Navigates to the iphone14PlusSixScreen when the action is triggered.
  onTapFourteen(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14PlusSixScreen,
    );
  }
}
