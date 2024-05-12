import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/utils/size_utils.dart';
import 'package:aaryan_s_application4/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeBluegray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  // Headline text style
  static get headlineLargeBluegray900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineLargeff1f2937 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF1F2937),
      );
  static get headlineMediumGray900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumPink900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.pink900,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineMediumTeal900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.teal900,
      );
  static get headlineSmallInterGray900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterff111827 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: Color(0XFF111827),
      );
  static get headlineSmallInterfff9fafb =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: Color(0XFFF9FAFB),
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlueA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA200,
      );
  static get labelLargeBluegray300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get labelLargeDeeppurpleA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA200,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargeRed400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red400,
      );
  static get labelLargeTeal400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal400,
      );
  // Title text style
  static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleLargefff9fafb => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFFF9FAFB),
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray800SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumYellow50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow50,
        fontSize: 18.fSize,
      );
  static get titleMediumfff9fafb => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFF9FAFB),
      );
  static get titleSmallBluegray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmallff1f2937 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF1F2937),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poetsenOne {
    return copyWith(
      fontFamily: 'PoetsenOne',
    );
  }
}
