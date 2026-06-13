import 'package:flutter/material.dart';
import 'package:getx_learning/config/app_colors.dart';

var myTheme = ThemeData(
  useMaterial3: true,
  // scaffoldBackgroundColor: AppColors.background,
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    surface: AppColors.surface,
    brightness: Brightness.light,
    primaryContainer: AppColors.primaryContainer,
    secondaryContainer: AppColors.secondaryContainer,
    onSecondaryContainer: AppColors.onSecondaryContainer,
    onSurface: AppColors.onSurface,
    error: AppColors.error,
    onError: AppColors.onError,
    onPrimary: AppColors.onPrimary,
    outline: AppColors.outline,
  ),

  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.surface),
    actionsIconTheme: IconThemeData(color: AppColors.surface),
    backgroundColor: AppColors.primary,
    titleTextStyle: TextStyle(color: AppColors.surface, fontSize: 18),
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: AppColors.onSecondaryContainer,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.onPrimary,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(foregroundColor: AppColors.primary),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: AppColors.primary),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  ),
  cardTheme: const CardThemeData(
    color: AppColors.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      side: BorderSide(color: AppColors.outline, width: 1),
    ),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return AppColors.background;
    }),
    trackColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primaryContainer.withValues(alpha: 0.5);
      }
      return AppColors.onSecondaryContainer;
    }),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.all(AppColors.surface),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    side: const BorderSide(color: AppColors.primaryContainer, width: 2),
  ),
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primary;
      }
      return AppColors.primaryContainer;
    }),
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: AppColors.primary,
    inactiveTrackColor: AppColors.onSecondaryContainer,
    thumbColor: AppColors.primary,
    overlayColor: AppColors.secondary,
  ),

  cardColor: AppColors.surface,
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(16)),
    ),
  ),
  tabBarTheme: TabBarThemeData(
    labelColor: AppColors.primary,
    unselectedLabelColor: AppColors.onSurface,
    indicatorColor: AppColors.primary,
    indicatorSize: TabBarIndicatorSize.tab,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.surface,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.onSurface,
    type: BottomNavigationBarType.fixed,
  ),
  dialogTheme: DialogThemeData(
    backgroundColor: AppColors.surface,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    titleTextStyle: const TextStyle(
      color: AppColors.primary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: const TextStyle(color: AppColors.onSurface, fontSize: 16),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: AppColors.primaryContainer,
    contentTextStyle: const TextStyle(color: AppColors.surface),
    actionTextColor: AppColors.secondary,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppColors.surface,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
  ),
  dividerTheme: const DividerThemeData(
    color: AppColors.onSecondaryContainer,
    thickness: 1,
    space: 24,
  ),
  listTileTheme: const ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    iconColor: AppColors.primary,
    textColor: AppColors.onSurface,
  ),
  iconTheme: const IconThemeData(color: AppColors.primary, size: 24),
);
