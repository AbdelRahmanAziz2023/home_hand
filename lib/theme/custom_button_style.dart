import 'dart:ui';
import 'package:abdel_rahman_aziz_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillLightBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillRedA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientLightBlueToBlueGrayDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
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
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.05, 0),
          colors: [
            appTheme.lightBlue800,
            appTheme.blueGray10000,
          ],
        ),
      );
  static BoxDecoration get gradientLightBlueToBlueGrayTL16Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: theme.colorScheme.onError.withOpacity(1),
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
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.05, 0),
          colors: [
            appTheme.lightBlue800,
            appTheme.blueGray10000,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineLightBlue => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue800,
        side: BorderSide(
          color: appTheme.lightBlue800,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlineLightBlueFb => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
        side: BorderSide(
          color: appTheme.lightBlue500Fb,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.h),
        ),
      );
  static ButtonStyle get outlineLightBlueFbTL23 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
        side: BorderSide(
          color: appTheme.lightBlue500Fb,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.h),
        ),
      );
  static ButtonStyle get outlineOnErrorTL16 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue80001,
        side: BorderSide(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlineOnErrorTL161 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue800,
        side: BorderSide(
          color: theme.colorScheme.onError.withOpacity(1),
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlinePrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL12 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL16 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlue800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL28 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              28.h,
            ),
            topRight: Radius.circular(
              27.h,
            ),
            bottomLeft: Radius.circular(
              28.h,
            ),
            bottomRight: Radius.circular(
              27.h,
            ),
          ),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL38 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightBlueA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              38.h,
            ),
            topRight: Radius.circular(
              37.h,
            ),
            bottomLeft: Radius.circular(
              38.h,
            ),
            bottomRight: Radius.circular(
              37.h,
            ),
          ),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
