import 'bloc/iphone_14_plus_fourteen_bloc.dart';
import 'models/iphone_14_plus_fourteen_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_rating_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14PlusFourteenScreen extends StatelessWidget {
  const Iphone14PlusFourteenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusFourteenBloc>(
        create: (context) => Iphone14PlusFourteenBloc(Iphone14PlusFourteenState(
            iphone14PlusFourteenModelObj: Iphone14PlusFourteenModel()))
          ..add(Iphone14PlusFourteenInitialEvent()),
        child: Iphone14PlusFourteenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 44.v),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SizedBox(height: 55.v),
                  CustomImageView(
                      imagePath: ImageConstant.img601111,
                      height: 125.adaptSize,
                      width: 125.adaptSize,
                      radius: BorderRadius.circular(62.h)),
                  SizedBox(height: 43.v),
                  Text("lbl_ramy_said".tr,
                      style: CustomTextStyles.headlineSmallLightblueA700),
                  SizedBox(height: 9.v),
                  Text("msg_let_s_rate_your".tr,
                      style: CustomTextStyles.titleMediumGray50001),
                  SizedBox(height: 10.v),
                  CustomRatingBar(initialRating: 5),
                  SizedBox(height: 53.v),
                  BlocSelector<Iphone14PlusFourteenBloc,
                          Iphone14PlusFourteenState, TextEditingController?>(
                      selector: (state) => state.fiftySevenController,
                      builder: (context, fiftySevenController) {
                        return CustomTextFormField(
                            controller: fiftySevenController,
                            hintText: "msg_tell_people_about".tr,
                            hintStyle:
                                CustomTextStyles.titleMediumGray50001Medium,
                            textInputAction: TextInputAction.done,
                            maxLines: 4,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 24.v));
                      }),
                  Spacer(),
                  CustomElevatedButton(
                      height: 55.v,
                      text: "lbl_submit".tr,
                      margin: EdgeInsets.only(left: 30.h, right: 13.h),
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL28,
                      buttonTextStyle: theme.textTheme.headlineSmall!,
                      onPressed: () {
                        onTapSubmit(context);
                      })
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftLightBlue90001,
            margin: EdgeInsets.only(left: 23.h, top: 12.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleOne(
            text: "lbl_review".tr, margin: EdgeInsets.only(left: 49.h)));
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
