import 'bloc/iphone_14_plus_thirteen_bloc.dart';
import 'models/iphone_14_plus_thirteen_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14PlusThirteenScreen extends StatelessWidget {
  const Iphone14PlusThirteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusThirteenBloc>(
        create: (context) => Iphone14PlusThirteenBloc(Iphone14PlusThirteenState(
            iphone14PlusThirteenModelObj: Iphone14PlusThirteenModel()))
          ..add(Iphone14PlusThirteenInitialEvent()),
        child: Iphone14PlusThirteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14PlusThirteenBloc, Iphone14PlusThirteenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 37.h, vertical: 24.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "msg_about_this_service2".tr,
                                  style: theme.textTheme.titleMedium),
                              TextSpan(
                                  text: "\n".tr,
                                  style: CustomTextStyles.titleMediumPrimary_1)
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(height: 9.v),
                        Container(
                            width: 345.h,
                            margin: EdgeInsets.only(left: 5.h, right: 3.h),
                            child: Text("msg_book_your_professional".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleMediumGray50001)),
                        SizedBox(height: 17.v),
                        Text("msg_service_description".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 17.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 122.v,
                                width: 333.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onError
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(6.h),
                                    border: Border.all(
                                        color: appTheme.blueGray10001,
                                        width: 1.h)))),
                        SizedBox(height: 22.v),
                        Text("lbl_date".tr, style: theme.textTheme.titleMedium),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 122.v,
                                width: 333.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onError
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(6.h),
                                    border: Border.all(
                                        color: appTheme.blueGray10001,
                                        width: 1.h)))),
                        SizedBox(height: 22.v),
                        Text("lbl_address".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 17.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 45.v,
                                width: 333.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.onError
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(6.h),
                                    border: Border.all(
                                        color: appTheme.blueGray10001,
                                        width: 1.h)))),
                        SizedBox(height: 23.v),
                        Text("lbl_payment".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 21.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomOutlinedButton(
                                          width: 108.h,
                                          text: "lbl_cash2".tr,
                                          buttonStyle: CustomButtonStyles
                                              .outlineOnErrorTL161,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumOnError),
                                      CustomOutlinedButton(
                                          width: 108.h,
                                          text: "lbl_credit".tr,
                                          buttonStyle: CustomButtonStyles
                                              .outlineLightBlue,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumOnError)
                                    ]))),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildSubmit(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftLightBlue90001,
            margin: EdgeInsets.only(left: 23.h, top: 13.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_service_details".tr));
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        height: 75.v,
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 47.h, right: 42.h, bottom: 22.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL38,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        onPressed: () {
          onTapSubmit(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the splachScreenOneScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splachScreenOneScreen,
    );
  }
}
