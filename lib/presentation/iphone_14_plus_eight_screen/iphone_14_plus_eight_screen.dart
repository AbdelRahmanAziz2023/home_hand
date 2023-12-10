import 'bloc/iphone_14_plus_eight_bloc.dart';
import 'models/iphone_14_plus_eight_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/core/utils/validation_functions.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_elevated_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_outlined_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14PlusEightScreen extends StatelessWidget {
  Iphone14PlusEightScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusEightBloc>(
      create: (context) => Iphone14PlusEightBloc(Iphone14PlusEightState(
        iphone14PlusEightModelObj: Iphone14PlusEightModel(),
      ))
        ..add(Iphone14PlusEightInitialEvent()),
      child: Iphone14PlusEightScreen(),
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
                      horizontal: 45.h,
                      vertical: 44.v,
                    ),
                    decoration:
                        AppDecoration.gradientLightBlueToLightBlueFb.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                        SizedBox(height: 53.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 73.h),
                            child: Text(
                              "msg_sign_up_with_google".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 31.v),
                        Divider(
                          color: appTheme.blueGray100Ee,
                          indent: 7.h,
                          endIndent: 9.h,
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            right: 9.h,
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
                            padding: EdgeInsets.only(left: 35.h),
                            child: Text(
                              "lbl_address".tr,
                              style: CustomTextStyles.titleSmallWhiteA70002,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Divider(
                          indent: 8.h,
                          endIndent: 9.h,
                        ),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 35.h),
                            child: Text(
                              "lbl_gender".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Divider(
                          indent: 8.h,
                          endIndent: 9.h,
                        ),
                        SizedBox(height: 38.v),
                        _buildUpLoadYourPersonalPhoto(context),
                        SizedBox(height: 30.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildClient(context),
                              _buildWorker(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildListofServices(context),
                        SizedBox(height: 37.v),
                        _buildUpLoadYourID(context),
                        SizedBox(height: 50.v),
                        _buildCreateAccount(context),
                        SizedBox(height: 27.v),
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
                    top: 113.v,
                    right: 20.h,
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
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 20.v,
                    ),
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
                  imagePath: ImageConstant.imgEllipse491x84,
                  height: 91.v,
                  width: 84.h,
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 35.v,
                    width: 257.h,
                    margin: EdgeInsets.only(
                      left: 79.h,
                      top: 195.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineOnError3.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGoogle2,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      alignment: Alignment.topLeft,
                    ),
                  ),
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
      child: BlocSelector<Iphone14PlusEightBloc, Iphone14PlusEightState,
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
        left: 6.h,
        right: 9.h,
      ),
      child: BlocSelector<Iphone14PlusEightBloc, Iphone14PlusEightState,
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
                imagePath: ImageConstant.imgVectorWhiteA70004,
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
        left: 8.h,
        right: 9.h,
      ),
      child: BlocBuilder<Iphone14PlusEightBloc, Iphone14PlusEightState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl_password".tr,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(4.h, 5.v, 8.h, 5.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightBlue80001,
                height: 15.adaptSize,
                width: 15.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 26.v,
            ),
            suffix: InkWell(
              onTap: () {
                context.read<Iphone14PlusEightBloc>().add(
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
    return CustomOutlinedButton(
      text: "msg_up_load_your_personal".tr,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 9.h,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientLightBlueToBlueGrayTL16Decoration,
    );
  }

  /// Section Widget
  Widget _buildClient(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_client".tr,
        margin: EdgeInsets.only(right: 22.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildWorker(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_worker".tr,
        margin: EdgeInsets.only(left: 22.h),
        buttonStyle: CustomButtonStyles.outlineOnErrorTL16,
        buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
      ),
    );
  }

  /// Section Widget
  Widget _buildListofServices(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 9.h,
      ),
      child: BlocSelector<Iphone14PlusEightBloc, Iphone14PlusEightState,
          TextEditingController?>(
        selector: (state) => state.listofServicesController,
        builder: (context, listofServicesController) {
          return CustomTextFormField(
            controller: listofServicesController,
            hintText: "msg_list_of_services".tr,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(horizontal: 27.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUpLoadYourID(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_up_load_your_id".tr,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 9.h,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_create_account".tr,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 7.h,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallLightblue80001,
    );
  }
}
