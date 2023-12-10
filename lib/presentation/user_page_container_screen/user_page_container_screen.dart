import 'bloc/user_page_container_bloc.dart';
import 'models/user_page_container_model.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_eleven_page/iphone_14_plus_eleven_page.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/user_page/user_page.dart';
import 'package:abdel_rahman_aziz_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UserPageContainerScreen extends StatelessWidget {
  UserPageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<UserPageContainerBloc>(
        create: (context) => UserPageContainerBloc(UserPageContainerState(
            userPageContainerModelObj: UserPageContainerModel()))
          ..add(UserPageContainerInitialEvent()),
        child: UserPageContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<UserPageContainerBloc, UserPageContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.userPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(left: 24.h, right: 15.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Curvedcalendar:
        return AppRoutes.userPage;
      case BottomBarEnum.Curvedsettings:
        return AppRoutes.iphone14PlusElevenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.userPage:
        return UserPage.builder(context);
      case AppRoutes.iphone14PlusElevenPage:
        return Iphone14PlusElevenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
