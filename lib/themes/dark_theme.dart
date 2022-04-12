import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_styles.dart';

final baseTheme = ThemeData.dark();

final darkTheme = baseTheme.copyWith(
  colorScheme: baseTheme.colorScheme.copyWith(
    primary: AppColors.colorPrimaryDark,
    onPrimary: AppColors.colorOnPrimaryDark,
    secondary: AppColors.colorSecondaryDark,
    onSecondary: AppColors.colorOnSecondaryDark,
    background: AppColors.colorBackgroundDark,
    onBackground: AppColors.colorOnBackgroundDark,
    surface: AppColors.colorSurfaceDark,
    onSurface: AppColors.colorOnSurfaceDark,
    error: AppColors.colorError,
    onError: AppColors.colorOnError,
    brightness: Brightness.dark,
  ),
  brightness: Brightness.dark,
  progressIndicatorTheme: baseTheme.progressIndicatorTheme.copyWith(
    color: AppColors.colorOnPrimaryDark,
  ),
  backgroundColor: AppColors.colorBackgroundDark,
  scaffoldBackgroundColor: AppColors.colorBackgroundDark,
  tabBarTheme: baseTheme.tabBarTheme.copyWith(
    unselectedLabelStyle: baseTheme.textTheme.caption,
    labelStyle: baseTheme.textTheme.caption,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: AppColors.colorSurfaceDark,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    labelPadding: EdgeInsets.zero,
    labelColor: AppColors.colorPrimaryDark,
    unselectedLabelColor: AppColors.colorOnBackgroundDark.withOpacity(.6),
  ),
  dividerColor: AppColors.colorOnBackgroundDark.withOpacity(.08),
  dividerTheme: baseTheme.dividerTheme.copyWith(
    indent: 0,
    endIndent: 0,
    thickness: 1,
    color: AppColors.colorOnBackgroundDark.withOpacity(.08),
  ),
  cardTheme: baseTheme.cardTheme.copyWith(
    color: AppColors.colorSecondaryDark,
    margin: const EdgeInsets.all(16),
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
  bottomAppBarTheme: baseTheme.bottomAppBarTheme,
  bottomNavigationBarTheme: baseTheme.bottomNavigationBarTheme,
  materialTapTargetSize: MaterialTapTargetSize.padded,
  iconTheme: baseTheme.iconTheme.copyWith(
    color: AppColors.colorOnBackgroundDark,
  ),
  primaryIconTheme: baseTheme.primaryIconTheme,
  appBarTheme: baseTheme.appBarTheme.copyWith(
    centerTitle: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.colorOnBackgroundDark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    iconTheme: baseTheme.iconTheme.copyWith(
      color: AppColors.colorOnBackgroundDark,
    ),
    toolbarTextStyle: baseTheme.textTheme.headline6!.copyWith(
      fontWeight: FontWeight.w700,
      height: 1.33,
      letterSpacing: 0.15,
      fontSize: 18,
      color: AppColors.colorOnPrimaryDark,
    ),
  ),
  chipTheme: baseTheme.chipTheme.copyWith(
    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
    labelStyle: const TextStyle(
      fontWeight: FontWeight.w500,
    ),
    secondaryLabelStyle: const TextStyle(
      fontWeight: FontWeight.w500,
    ),
  ),
  sliderTheme: baseTheme.sliderTheme.copyWith(
    thumbShape: SliderComponentShape.noOverlay,
  ),
  textSelectionTheme: baseTheme.textSelectionTheme,
  cupertinoOverrideTheme: baseTheme.cupertinoOverrideTheme,
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    border: InputBorder.none,
    errorBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    contentPadding: EdgeInsets.zero,
    filled: false,
    isDense: true,
    fillColor: AppColors.colorSecondaryDark,
    errorStyle: baseTheme.textTheme.subtitle2!.copyWith(
      color: AppColors.colorError,
    ),
    hintStyle: baseTheme.textTheme.bodyText2!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.19,
      letterSpacing: 0.25,
    ),
    labelStyle: const TextStyle(),
  ),
  buttonTheme: baseTheme.buttonTheme.copyWith(
    textTheme: ButtonTextTheme.primary,
  ),
  switchTheme: baseTheme.switchTheme.copyWith(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    trackColor: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.disabled)
          ? AppColors.colorOnBackgroundDark
          : AppColors.colorPrimaryDark;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.disabled)
          ? AppColors.colorOnBackgroundDark
          : AppColors.colorPrimaryDark;
    }),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.transparent),
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(AppColors.colorSurfaceDark),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.25,
          letterSpacing: 1.5,
        ),
      ),
      shape: MaterialStateProperty.resolveWith((state) {
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        );
      }),
    ),
  ),
  tooltipTheme: TooltipThemeData(
    preferBelow: false,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
      ),
      foregroundColor: MaterialStateProperty.all(AppColors.colorSurfaceDark),
      elevation: MaterialStateProperty.all(4),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          height: 1.25,
          letterSpacing: 1.5,
        ),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonStyle),
  textTheme: baseTheme.textTheme.copyWith(
    headline1: baseTheme.textTheme.headline1!.copyWith(
      fontWeight: FontWeight.w900,
      height: 1.2,
      letterSpacing: 0.25,
      fontSize: 96,
    ),
    headline2: baseTheme.textTheme.headline2!.copyWith(
      fontWeight: FontWeight.w900,
      height: 1.2,
      letterSpacing: 0.25,
      fontSize: 60,
    ),
    headline3: baseTheme.textTheme.headline3!.copyWith(
      fontWeight: FontWeight.w900,
      height: 1.16,
      letterSpacing: 0.25,
      fontSize: 48,
    ),
    headline4: baseTheme.textTheme.headline4!.copyWith(
      fontWeight: FontWeight.w900,
      height: 1.17,
      letterSpacing: 0.25,
      fontSize: 34,
    ),
    headline5: baseTheme.textTheme.headline5!.copyWith(
      fontWeight: FontWeight.w600,
      height: 1.33,
      fontSize: 24,
    ),
    headline6: baseTheme.textTheme.headline6!.copyWith(
      fontWeight: FontWeight.w700,
      height: 1.33,
      letterSpacing: 0.15,
      fontSize: 18,
    ),
    subtitle1: baseTheme.textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.15,
    ),
    subtitle2: baseTheme.textTheme.subtitle2!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1.42,
      letterSpacing: 0.1,
    ),
    bodyText1: baseTheme.textTheme.bodyText1!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 0.44,
    ),
    bodyText2: baseTheme.textTheme.bodyText2!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.42,
      letterSpacing: 0.25,
    ),
    button: baseTheme.textTheme.button!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 1.5,
    ),
    caption: baseTheme.textTheme.caption!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 1.66,
      letterSpacing: 0.5,
    ),
    overline: baseTheme.textTheme.overline!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 11,
      height: 1.45,
      letterSpacing: 1.5,
    ),
  ),
);
