import 'bloc/iphone_14_plus_seven_bloc.dart';
import 'models/iphone_14_plus_seven_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14PlusSevenScreen extends StatelessWidget {
  const Iphone14PlusSevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusSevenBloc>(
        create: (context) => Iphone14PlusSevenBloc(Iphone14PlusSevenState(
            iphone14PlusSevenModelObj: Iphone14PlusSevenModel()))
          ..add(Iphone14PlusSevenInitialEvent()),
        child: Iphone14PlusSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<Iphone14PlusSevenBloc, Iphone14PlusSevenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 27.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 44.adaptSize,
                            width: 44.adaptSize,
                            margin: EdgeInsets.only(left: 6.h),
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Spacer(flex: 52),
                        SizedBox(
                            height: 175.v,
                            width: 273.h,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                          height: 124.v,
                                          width: 141.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  width: 1.h)))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup5Onerror,
                                      height: 136.v,
                                      width: 154.h,
                                      alignment: Alignment.bottomRight)
                                ])),
                        Spacer(flex: 47),
                        SizedBox(height: 34.v),
                        _buildScanMyFace(context)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildScanMyFace(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 75.v,
            width: 353.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("lbl_get_start".tr,
                      style: theme.textTheme.headlineSmall)),
              CustomOutlinedButton(
                  height: 70.v,
                  width: 353.h,
                  text: "lbl_scan_my_face".tr,
                  buttonStyle: CustomButtonStyles.outlineLightBlueFbTL23,
                  buttonTextStyle: theme.textTheme.headlineSmall!,
                  alignment: Alignment.topCenter)
            ])));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
