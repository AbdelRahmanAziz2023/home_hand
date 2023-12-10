import '../iphone_14_plus_eleven_page/widgets/fortyfour_item_widget.dart';
import 'bloc/iphone_14_plus_eleven_bloc.dart';
import 'models/fortyfour_item_model.dart';
import 'models/iphone_14_plus_eleven_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_icon_button.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14PlusElevenPage extends StatelessWidget {
  const Iphone14PlusElevenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone14PlusElevenBloc>(
      create: (context) => Iphone14PlusElevenBloc(Iphone14PlusElevenState(
        iphone14PlusElevenModelObj: Iphone14PlusElevenModel(),
      ))
        ..add(Iphone14PlusElevenInitialEvent()),
      child: Iphone14PlusElevenPage(),
    );
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
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildSearch(context),
              SizedBox(height: 63.v),
              _buildFortyFour(context),
              SizedBox(height: 27.v),
              _buildShape(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup8,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 28.v,
          bottom: 20.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCurvedBellPrimary,
          margin: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<Iphone14PlusElevenBloc, Iphone14PlusElevenState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_search".tr,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: CustomIconButton(
              height: 49.v,
              width: 48.h,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: BlocSelector<Iphone14PlusElevenBloc, Iphone14PlusElevenState,
            Iphone14PlusElevenModel?>(
          selector: (state) => state.iphone14PlusElevenModelObj,
          builder: (context, iphone14PlusElevenModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 278.v,
                crossAxisCount: 2,
                mainAxisSpacing: 37.h,
                crossAxisSpacing: 37.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  iphone14PlusElevenModelObj?.fortyfourItemList.length ?? 0,
              itemBuilder: (context, index) {
                FortyfourItemModel model =
                    iphone14PlusElevenModelObj?.fortyfourItemList[index] ??
                        FortyfourItemModel();
                return FortyfourItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildShape(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCurvedSettings,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 81.v,
              bottom: 3.v,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Container(
            height: 90.adaptSize,
            width: 90.adaptSize,
            margin: EdgeInsets.only(bottom: 20.v),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 22.v,
            ),
            decoration: AppDecoration.gradientLightBlueToLightBlue.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder45,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgShapeOnerror,
              height: 25.v,
              width: 24.h,
              alignment: Alignment.topCenter,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCurvedCalendar,
            height: 32.v,
            width: 33.h,
            margin: EdgeInsets.only(top: 78.v),
          ),
        ],
      ),
    );
  }
}
