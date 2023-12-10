import 'bloc/iphone_14_plus_nine_bloc.dart';
import 'models/iphone_14_plus_nine_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/core/utils/validation_functions.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_outlined_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14PlusNineScreen extends StatelessWidget {
  Iphone14PlusNineScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusNineBloc>(
      create: (context) => Iphone14PlusNineBloc(Iphone14PlusNineState(
        iphone14PlusNineModelObj: Iphone14PlusNineModel(),
      ))
        ..add(Iphone14PlusNineInitialEvent()),
      child: Iphone14PlusNineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 39.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup33,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle10,
                      height: 78.v,
                      width: 85.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 31.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 42.h,
                      vertical: 71.v,
                    ),
                    decoration:
                        AppDecoration.gradientLightBlueToLightBlueFb.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 62.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: AppDecoration.outlinePrimary1,
                            child: Text(
                              "lbl_register".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 39.v),
                        SizedBox(
                          height: 35.v,
                          width: 257.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 8.v),
                                  child: Text(
                                    "msg_sign_up_with_google".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 35.v,
                                  width: 257.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 19.h,
                                    vertical: 3.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineOnError4.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGoogle2,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    alignment: Alignment.bottomLeft,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.v),
                        Divider(
                          color: appTheme.blueGray100Ee,
                          indent: 11.h,
                          endIndent: 11.h,
                        ),
                        SizedBox(height: 38.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            right: 12.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "lbl_first_name".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    width: 127.h,
                                    child: Divider(),
                                  ),
                                ],
                              ),
                              _buildName(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildFirstName(context),
                        SizedBox(height: 13.v),
                        _buildPassword(context),
                        SizedBox(height: 19.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text(
                              "lbl_address".tr,
                              style: CustomTextStyles.titleSmallWhiteA70002,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Divider(
                          indent: 11.h,
                          endIndent: 12.h,
                        ),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text(
                              "lbl_gender".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Divider(
                          indent: 11.h,
                          endIndent: 12.h,
                        ),
                        SizedBox(height: 38.v),
                        _buildUpLoadYourPersonalPhoto(context),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildClient(context),
                              _buildWorker(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 56.v),
                        _buildCreateAccount(context),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 114.v,
                  width: 92.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 48.v,
                    right: 60.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle10,
                  height: 118.v,
                  width: 49.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 55.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle22,
                  height: 112.v,
                  width: 95.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 97.v,
                    right: 24.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle10,
                  height: 104.v,
                  width: 75.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.topRight,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    margin: EdgeInsets.only(top: 14.v),
                    decoration: BoxDecoration(
                      color: appTheme.lightBlue90001,
                      borderRadius: BorderRadius.circular(
                        50.h,
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
                  imagePath: ImageConstant.imgEllipse485x81,
                  height: 85.v,
                  width: 81.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: BlocSelector<Iphone14PlusNineBloc, Iphone14PlusNineState,
          TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            width: 127.h,
            controller: nameController,
            hintText: "lbl_second_name".tr,
            hintStyle: CustomTextStyles.bodyMediumOnError14,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 12.h,
      ),
      child: BlocSelector<Iphone14PlusNineBloc, Iphone14PlusNineState,
          TextEditingController?>(
        selector: (state) => state.firstNameController,
        builder: (context, firstNameController) {
          return CustomTextFormField(
            controller: firstNameController,
            hintText: "lbl_email".tr,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.only(
                left: 6.h,
                right: 8.h,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA70003,
                height: 13.v,
                width: 15.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 21.v,
            ),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 12.h,
      ),
      child: BlocBuilder<Iphone14PlusNineBloc, Iphone14PlusNineState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(4.h, 5.v, 8.h, 5.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 26.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<Iphone14PlusNineBloc>().add(
                    ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword));
              },
              child: Container(
                margin: EdgeInsets.only(
                  left: 30.h,
                  right: 1.h,
                  bottom: 6.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrameGray300,
                  height: 20.v,
                  width: 30.h,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 26.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: state.isShowPassword,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUpLoadYourPersonalPhoto(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_up_load_your_personal".tr,
      margin: EdgeInsets.only(
        left: 11.h,
        right: 12.h,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
    );
  }

  /// Section Widget
  Widget _buildClient(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_client".tr,
        margin: EdgeInsets.only(right: 22.h),
        buttonStyle: CustomButtonStyles.outlineOnErrorTL161,
      ),
    );
  }

  /// Section Widget
  Widget _buildWorker(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_worker".tr,
        margin: EdgeInsets.only(left: 22.h),
        buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_create_account".tr,
      margin: EdgeInsets.only(
        left: 15.h,
        right: 10.h,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallLightblue80001,
    );
  }
}
