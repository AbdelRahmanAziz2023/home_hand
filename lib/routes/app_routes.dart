import 'package:flutter/material.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/splach_screen/splach_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/splach_screen_one_screen/splach_screen_one_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_five_screen/iphone_14_plus_five_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_six_screen/iphone_14_plus_six_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_seven_screen/iphone_14_plus_seven_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_ten_screen/iphone_14_plus_ten_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_eight_screen/iphone_14_plus_eight_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_nine_screen/iphone_14_plus_nine_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_twelve_screen/iphone_14_plus_twelve_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/user_page_container_screen/user_page_container_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/homepage_screen/homepage_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_fourteen_screen/iphone_14_plus_fourteen_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/order_page_screen/order_page_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_fifteen_screen/iphone_14_plus_fifteen_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_thirteen_screen/iphone_14_plus_thirteen_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/iphone_14_plus_sixteen_screen/iphone_14_plus_sixteen_screen.dart';
import 'package:abdel_rahman_aziz_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splachScreen = '/splach_screen';

  static const String splachScreenOneScreen = '/splach_screen_one_screen';

  static const String iphone14PlusFiveScreen = '/iphone_14_plus_five_screen';

  static const String iphone14PlusSixScreen = '/iphone_14_plus_six_screen';

  static const String iphone14PlusSevenScreen = '/iphone_14_plus_seven_screen';

  static const String iphone14PlusTenScreen = '/iphone_14_plus_ten_screen';

  static const String iphone14PlusEightScreen = '/iphone_14_plus_eight_screen';

  static const String iphone14PlusNineScreen = '/iphone_14_plus_nine_screen';

  static const String iphone14PlusTwelveScreen =
      '/iphone_14_plus_twelve_screen';

  static const String userPage = '/user_page';

  static const String userPageContainerScreen = '/user_page_container_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String iphone14PlusElevenPage = '/iphone_14_plus_eleven_page';

  static const String iphone14PlusFourteenScreen =
      '/iphone_14_plus_fourteen_screen';

  static const String orderPageScreen = '/order_page_screen';

  static const String iphone14PlusFifteenScreen =
      '/iphone_14_plus_fifteen_screen';

  static const String iphone14PlusThirteenScreen =
      '/iphone_14_plus_thirteen_screen';

  static const String iphone14PlusSixteenScreen =
      '/iphone_14_plus_sixteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splachScreen: SplachScreen.builder,
        splachScreenOneScreen: SplachScreenOneScreen.builder,
        iphone14PlusFiveScreen: Iphone14PlusFiveScreen.builder,
        iphone14PlusSixScreen: Iphone14PlusSixScreen.builder,
        iphone14PlusSevenScreen: Iphone14PlusSevenScreen.builder,
        iphone14PlusTenScreen: Iphone14PlusTenScreen.builder,
        iphone14PlusEightScreen: Iphone14PlusEightScreen.builder,
        iphone14PlusNineScreen: Iphone14PlusNineScreen.builder,
        iphone14PlusTwelveScreen: Iphone14PlusTwelveScreen.builder,
        userPageContainerScreen: UserPageContainerScreen.builder,
        homepageScreen: HomepageScreen.builder,
        iphone14PlusFourteenScreen: Iphone14PlusFourteenScreen.builder,
        orderPageScreen: OrderPageScreen.builder,
        iphone14PlusFifteenScreen: Iphone14PlusFifteenScreen.builder,
        iphone14PlusThirteenScreen: Iphone14PlusThirteenScreen.builder,
        iphone14PlusSixteenScreen: Iphone14PlusSixteenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplachScreen.builder
      };
}
