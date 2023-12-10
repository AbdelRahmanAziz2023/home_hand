import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray10001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get bodyMediumLightblue300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlue300,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyMediumOnError14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 15.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeLightblue900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.lightBlue900,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get headlineLargeRegular => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallLightblueA700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  // Inter text style
  static get interLightblue90001 => TextStyle(
        color: appTheme.lightBlue90001,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  // Label text style
  static get labelLargeDeeporangeA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeDeeporangeA40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA40001,
      );
  static get labelLargeDeeporangeA40001_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA40001,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray50002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50002,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLightblue90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlue90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLightblue90001_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightBlue90001,
      );
  static get labelLargeTeal900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal900,
      );
  static get labelLargeWhiteA70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA70002,
      );
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeBluegray10001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray10001,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeCyan900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.cyan900,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray50001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001.withOpacity(0.4),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLightblue90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue90002,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get titleMediumOnErrorMedium => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleSmallBluegray10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray10001,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeporange400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrange400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray200,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray50002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLightblue80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue80001,
      );
  static get titleSmallLightblue90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue90001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRedA700b5 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700B5,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70002,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
