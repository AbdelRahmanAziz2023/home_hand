import 'bloc/splach_screen_one_bloc.dart';
import 'models/splach_screen_one_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class SplachScreenOneScreen extends StatelessWidget {
  const SplachScreenOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplachScreenOneBloc>(
        create: (context) => SplachScreenOneBloc(SplachScreenOneState(
            splachScreenOneModelObj: SplachScreenOneModel()))
          ..add(SplachScreenOneInitialEvent()),
        child: SplachScreenOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplachScreenOneBloc, SplachScreenOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 36.h, vertical: 81.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 83.v),
                        Container(
                            height: 262.v,
                            width: 314.h,
                            decoration: AppDecoration.outlinePrimary,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      decoration: AppDecoration.outlinePrimary1,
                                      child: Text("lbl_homehand".tr,
                                          style:
                                              theme.textTheme.displayMedium))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector262x314,
                                  height: 262.v,
                                  width: 314.h,
                                  alignment: Alignment.center)
                            ])),
                        Spacer(),
                        _buildFortyFour(context),
                        SizedBox(height: 35.v),
                        _buildView(context)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFortyFour(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 17.v),
            decoration: AppDecoration.outlineOnError
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder23),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgChat37177121,
                  height: 27.adaptSize,
                  width: 27.adaptSize,
                  margin: EdgeInsets.only(top: 2.v, bottom: 4.v)),
              Padding(
                  padding: EdgeInsets.only(left: 63.h, top: 2.v),
                  child: Text("lbl_sign_up".tr,
                      style: CustomTextStyles.headlineSmallOnPrimary))
            ])));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 69.v,
        width: 354.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    onTapView(context);
                  },
                  child: Container(
                      height: 69.v,
                      width: 353.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(23.h),
                          border: Border.all(
                              color: theme.colorScheme.onError, width: 1.h),
                          boxShadow: [
                            BoxShadow(
                                color: theme.colorScheme.primary,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 4))
                          ])))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 34.h, vertical: 17.v),
                  decoration: AppDecoration.outlineOnError1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder23),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup7,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.only(top: 4.v, bottom: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 84.h, top: 1.v),
                            child: Text("lbl_log_in".tr,
                                style: theme.textTheme.headlineSmall))
                      ])))
        ]));
  }

  /// Navigates to the iphone14PlusTenScreen when the action is triggered.
  onTapFortyFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14PlusTenScreen,
    );
  }

  /// Navigates to the iphone14PlusFiveScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone14PlusFiveScreen,
    );
  }
}
