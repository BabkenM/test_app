import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_styles.dart';

final baseTheme = ThemeData.light();

final lightTheme = baseTheme.copyWith(
  colorScheme: baseTheme.colorScheme.copyWith(
    primary: AppColors.colorPrimaryLight,
    onPrimary: AppColors.colorOnPrimaryLight,
    secondary: AppColors.colorSecondaryLight,
    onSecondary: AppColors.colorOnSecondaryLight,
    background: AppColors.colorBackgroundLight,
    onBackground: AppColors.colorOnBackgroundLight,
    surface: AppColors.colorSurfaceLight,
    onSurface: AppColors.colorOnSurfaceLight,
    error: AppColors.colorError,
    onError: AppColors.colorOnError,
    brightness: Brightness.light,
  ),
  brightness: Brightness.light,
  progressIndicatorTheme: baseTheme.progressIndicatorTheme.copyWith(
    color: AppColors.colorOnPrimaryLight,
  ),
  backgroundColor: AppColors.colorBackgroundLight,
  scaffoldBackgroundColor: AppColors.colorBackgroundLight,
  tabBarTheme: baseTheme.tabBarTheme.copyWith(
    unselectedLabelStyle: baseTheme.textTheme.caption,
    labelStyle: baseTheme.textTheme.caption,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: AppColors.colorSurfaceLight,
    ),
    indicatorSize: TabBarIndicatorSize.tab,
    labelPadding: EdgeInsets.zero,
    labelColor: AppColors.colorPrimaryLight,
    unselectedLabelColor: AppColors.colorOnBackgroundLight.withOpacity(.6),
  ),
  dividerColor: AppColors.colorOnBackgroundLight.withOpacity(.08),
  dividerTheme: baseTheme.dividerTheme.copyWith(
    indent: 0,
    endIndent: 0,
    thickness: 1,
    color: AppColors.colorOnBackgroundLight.withOpacity(.08),
  ),
  cardTheme: baseTheme.cardTheme.copyWith(
    color: AppColors.colorSecondaryLight,
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
    color: AppColors.colorOnBackgroundLight,
  ),
  primaryIconTheme: baseTheme.primaryIconTheme,
  appBarTheme: baseTheme.appBarTheme.copyWith(
    centerTitle: false,
    elevation: 0,
    shadowColor: const Color(0xFF333333).withOpacity(.2),
    backgroundColor: Colors.transparent,
    systemOverlayStyle: const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.colorOnBackgroundLight,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    iconTheme: baseTheme.iconTheme.copyWith(
      color: AppColors.colorOnBackgroundLight,
    ),
    toolbarTextStyle: baseTheme.textTheme.headline6,
  ),
  chipTheme: baseTheme.chipTheme.copyWith(
    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
    labelStyle: baseTheme.textTheme.headline6,
    secondaryLabelStyle: baseTheme.textTheme.headline6,
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
    fillColor: AppColors.colorSecondaryLight,
    errorStyle: baseTheme.textTheme.subtitle2!.copyWith(
      color: AppColors.colorError,
    ),
    hintStyle: baseTheme.textTheme.bodyText2!.copyWith(
      color: AppColors.colorOnSecondaryLight.withOpacity(.6),
    ),
    labelStyle: baseTheme.textTheme.caption,
  ),
  buttonTheme: baseTheme.buttonTheme.copyWith(
    textTheme: ButtonTextTheme.primary,
  ),
  switchTheme: baseTheme.switchTheme.copyWith(
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    trackColor: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.disabled)
          ? AppColors.colorOnBackgroundLight
          : AppColors.colorPrimaryLight;
    }),
    thumbColor: MaterialStateProperty.resolveWith((states) {
      return states.contains(MaterialState.disabled)
          ? AppColors.colorOnBackgroundLight
          : AppColors.colorPrimaryLight;
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
      foregroundColor: MaterialStateProperty.all(AppColors.colorSurfaceLight),
      textStyle: MaterialStateProperty.all(baseTheme.textTheme.button),
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
      shadowColor: MaterialStateProperty.all(
        const Color(0xFF333333).withOpacity(.2),
      ),
      foregroundColor: MaterialStateProperty.all(AppColors.colorSurfaceLight),
      elevation: MaterialStateProperty.all(4),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      textStyle: MaterialStateProperty.all(baseTheme.textTheme.button),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonStyle),
  textTheme: baseTheme.textTheme.copyWith(
    headline1: baseTheme.textTheme.headline1!.copyWith(
      fontWeight: FontWeight.w700,
      height: 1.21,
      letterSpacing: 0.25,
      fontSize: 96,
    ),
    headline2: baseTheme.textTheme.headline2!.copyWith(
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0.25,
      fontSize: 60,
    ),
    headline3: baseTheme.textTheme.headline3!.copyWith(
      fontWeight: FontWeight.w700,
      height: 1.16,
      letterSpacing: 0.25,
      fontSize: 48,
    ),
    headline4: baseTheme.textTheme.headline4!.copyWith(
      fontWeight: FontWeight.w900,
      height: 1.18,
      fontSize: 34,
    ),
    headline5: baseTheme.textTheme.headline5!.copyWith(
      fontWeight: FontWeight.w500,
      height: 1.32,
      fontSize: 24,
    ),
    headline6: baseTheme.textTheme.headline6!.copyWith(
      fontWeight: FontWeight.w700,
      height: 1.32,
      fontSize: 18,
    ),
    subtitle1: baseTheme.textTheme.subtitle1!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.48,
    ),
    subtitle2: baseTheme.textTheme.subtitle2!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.4,
    ),
    bodyText1: baseTheme.textTheme.bodyText1!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.5,
    ),
    bodyText2: baseTheme.textTheme.bodyText2!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.4,
    ),
    button: baseTheme.textTheme.button!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: 1.2,
    ),
    caption: baseTheme.textTheme.caption!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.7,
      letterSpacing: 0.5,
    ),
    overline: baseTheme.textTheme.overline!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 11,
      height: 1.42,
      letterSpacing: 1,
    ),
  ),
);
