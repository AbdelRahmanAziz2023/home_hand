import 'bloc/splach_bloc.dart';
import 'models/splach_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplachBloc>(
        create: (context) =>
            SplachBloc(SplachState(splachModelObj: SplachModel()))
              ..add(SplachInitialEvent()),
        child: SplachScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplachBloc, SplachState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 53.h),
                  child: Container(
                      height: 262.v,
                      width: 314.h,
                      decoration: AppDecoration.outlinePrimary,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                decoration: AppDecoration.outlinePrimary1,
                                child: Text("lbl_homehand".tr,
                                    style: theme.textTheme.displayMedium))),
                        CustomImageView(
                            imagePath: ImageConstant.imgVector262x314,
                            height: 262.v,
                            width: 314.h,
                            alignment: Alignment.center)
                      ])))));
    });
  }
}
