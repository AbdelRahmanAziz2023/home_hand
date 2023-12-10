import 'package:flutter/material.dart';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientLightBlueToLightBlue => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 10.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightBlue80002,
            appTheme.lightBlue80002.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientLightBlueToLightBlueFb => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1.03),
          colors: [
            appTheme.lightBlue80001.withOpacity(0.4),
            appTheme.lightBlue500Fb.withOpacity(0.1),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray10001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray40001,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlineLightBlueFb => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.2),
        border: Border.all(
          color: appTheme.lightBlue500Fb,
          width: 1.h,
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
      );
  static BoxDecoration get outlineLightblue500fb => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
        border: Border.all(
          color: appTheme.lightBlue500Fb,
          width: 1.h,
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
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        color: theme.colorScheme.onError.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnError1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.2),
        border: Border.all(
          color: theme.colorScheme.onError,
          width: 1.h,
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
      );
  static BoxDecoration get outlineOnError2 => BoxDecoration(
        color: appTheme.lightBlue80001,
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -3,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnError3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnError4 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration();
  static BoxDecoration get outlinePrimary1 => BoxDecoration();
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.lightBlue80002,
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
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: appTheme.blue50,
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
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder45 => BorderRadius.circular(
        45.h,
      );
  static BorderRadius get circleBorder75 => BorderRadius.circular(
        75.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL20 => BorderRadius.only(
        topLeft: Radius.circular(19.h),
        topRight: Radius.circular(20.h),
        bottomLeft: Radius.circular(20.h),
        bottomRight: Radius.circular(19.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder52 => BorderRadius.circular(
        52.h,
      );
  static BorderRadius get roundedBorder62 => BorderRadius.circular(
        62.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
