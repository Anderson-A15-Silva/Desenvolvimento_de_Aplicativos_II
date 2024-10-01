import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282539665),
      surfaceTint: Color(4282539665),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292338431),
      onPrimaryContainer: Color(4278197055),
      secondary: Color(4286208268),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958757),
      onSecondaryContainer: Color(4280752384),
      tertiary: Color(4283718290),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292862207),
      onTertiaryContainer: Color(4279113035),
      error: Color(4287646528),
      onError: Color(4294967295),
      errorContainer: Color(4294957780),
      onErrorContainer: Color(4281993477),
      surface: Color(4294310651),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4283515719),
      outline: Color(4286804855),
      outlineVariant: Color(4292199110),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4289447935),
      primaryFixed: Color(4292338431),
      onPrimaryFixed: Color(4278197055),
      primaryFixedDim: Color(4289447935),
      onPrimaryFixedVariant: Color(4280829559),
      secondaryFixed: Color(4294958757),
      onSecondaryFixed: Color(4280752384),
      secondaryFixedDim: Color(4293705836),
      onSecondaryFixedVariant: Color(4284301824),
      tertiaryFixed: Color(4292862207),
      onTertiaryFixed: Color(4279113035),
      tertiaryFixedDim: Color(4290626303),
      onTertiaryFixedVariant: Color(4282139257),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280566387),
      surfaceTint: Color(4282539665),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283987369),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283973120),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287786787),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281876084),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285165738),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285411367),
      onError: Color(4294967295),
      errorContainer: Color(4289355860),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310651),
      onSurface: Color(4279704862),
      onSurfaceVariant: Color(4283252547),
      outline: Color(4285160287),
      outlineVariant: Color(4287068026),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4289447935),
      primaryFixed: Color(4283987369),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282342542),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287786787),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4286010889),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285165738),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283521167),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278198603),
      surfaceTint: Color(4282539665),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280566387),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281278208),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283973120),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279639122),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281876084),
      onTertiaryContainer: Color(4294967295),
      error: Color(4282650634),
      onError: Color(4294967295),
      errorContainer: Color(4285411367),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310651),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281082148),
      outline: Color(4283252547),
      outlineVariant: Color(4283252547),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020723),
      inversePrimary: Color(4293258495),
      primaryFixed: Color(4280566387),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278594651),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283973120),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282132736),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281876084),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280362845),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205532),
      surfaceBright: Color(4294310651),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916150),
      surfaceContainer: Color(4293521392),
      surfaceContainerHigh: Color(4293126634),
      surfaceContainerHighest: Color(4292797413),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289447935),
      surfaceTint: Color(4289447935),
      onPrimary: Color(4278988895),
      primaryContainer: Color(4280829559),
      onPrimaryContainer: Color(4292338431),
      secondary: Color(4293705836),
      onSecondary: Color(4282461440),
      secondaryContainer: Color(4284301824),
      onSecondaryContainer: Color(4294958757),
      tertiary: Color(4290626303),
      onTertiary: Color(4280626017),
      tertiaryContainer: Color(4282139257),
      onTertiaryContainer: Color(4292862207),
      error: Color(4294948008),
      onError: Color(4283833878),
      errorContainer: Color(4285740074),
      onErrorContainer: Color(4294957780),
      surface: Color(4279112725),
      onSurface: Color(4292797413),
      onSurfaceVariant: Color(4292199110),
      outline: Color(4288580752),
      outlineVariant: Color(4283515719),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4282539665),
      primaryFixed: Color(4292338431),
      onPrimaryFixed: Color(4278197055),
      primaryFixedDim: Color(4289447935),
      onPrimaryFixedVariant: Color(4280829559),
      secondaryFixed: Color(4294958757),
      onSecondaryFixed: Color(4280752384),
      secondaryFixedDim: Color(4293705836),
      onSecondaryFixedVariant: Color(4284301824),
      tertiaryFixed: Color(4292862207),
      onTertiaryFixed: Color(4279113035),
      tertiaryFixedDim: Color(4290626303),
      onTertiaryFixedVariant: Color(4282139257),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289907711),
      surfaceTint: Color(4289447935),
      onPrimary: Color(4278195509),
      primaryContainer: Color(4285895111),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294034544),
      onSecondary: Color(4280292352),
      secondaryContainer: Color(4289891133),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290955263),
      onTertiary: Color(4278718022),
      tertiaryContainer: Color(4287007944),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949551),
      onError: Color(4281533698),
      errorContainer: Color(4291591023),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294376701),
      onSurfaceVariant: Color(4292527818),
      outline: Color(4289830562),
      outlineVariant: Color(4287659907),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4280961145),
      primaryFixed: Color(4292338431),
      onPrimaryFixed: Color(4278194220),
      primaryFixedDim: Color(4289447935),
      onPrimaryFixedVariant: Color(4279580006),
      secondaryFixed: Color(4294958757),
      onSecondaryFixed: Color(4279832320),
      secondaryFixedDim: Color(4293705836),
      onSecondaryFixedVariant: Color(4282921472),
      tertiaryFixed: Color(4292862207),
      onTertiaryFixed: Color(4278388801),
      tertiaryFixedDim: Color(4290626303),
      onTertiaryFixedVariant: Color(4281020775),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4289447935),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289907711),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966007),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4294034544),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294834687),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290955263),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965752),
      onError: Color(4278190080),
      errorContainer: Color(4294949551),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292527818),
      outlineVariant: Color(4292527818),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797413),
      inversePrimary: Color(4278331737),
      primaryFixed: Color(4292732927),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289907711),
      onPrimaryFixedVariant: Color(4278195509),
      secondaryFixed: Color(4294960053),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4294034544),
      onSecondaryFixedVariant: Color(4280292352),
      tertiaryFixed: Color(4293256703),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290955263),
      onTertiaryFixedVariant: Color(4278718022),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279704862),
      surfaceContainer: Color(4279968034),
      surfaceContainerHigh: Color(4280625964),
      surfaceContainerHighest: Color(4281349687),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  /// First Terciary Variant
  static const firstTerciaryVariant = ExtendedColor(
    seed: Color(4284831119),
    value: Color(4284831119),
    light: ColorFamily(
      color: Color(4284831119),
      onColor: Color(4294967295),
      colorContainer: Color(4293516799),
      onColorContainer: Color(4280356935),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(4284831119),
      onColor: Color(4294967295),
      colorContainer: Color(4293516799),
      onColorContainer: Color(4280356935),
    ),
    lightHighContrast: ColorFamily(
      color: Color(4284831119),
      onColor: Color(4294967295),
      colorContainer: Color(4293516799),
      onColorContainer: Color(4280356935),
    ),
    dark: ColorFamily(
      color: Color(4291804670),
      onColor: Color(4281738845),
      colorContainer: Color(4283252085),
      onColorContainer: Color(4293516799),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(4291804670),
      onColor: Color(4281738845),
      colorContainer: Color(4283252085),
      onColorContainer: Color(4293516799),
    ),
    darkHighContrast: ColorFamily(
      color: Color(4291804670),
      onColor: Color(4281738845),
      colorContainer: Color(4283252085),
      onColorContainer: Color(4293516799),
    ),
  );

  /// Second Terciary Variant
  static const secondTerciaryVariant = ExtendedColor(
    seed: Color(4292467161),
    value: Color(4292467161),
    light: ColorFamily(
      color: Color(4278216820),
      onColor: Color(4294967295),
      colorContainer: Color(4288606205),
      onColorContainer: Color(4278198052),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(4278216820),
      onColor: Color(4294967295),
      colorContainer: Color(4288606205),
      onColorContainer: Color(4278198052),
    ),
    lightHighContrast: ColorFamily(
      color: Color(4278216820),
      onColor: Color(4294967295),
      colorContainer: Color(4288606205),
      onColorContainer: Color(4278198052),
    ),
    dark: ColorFamily(
      color: Color(4286764000),
      onColor: Color(4278203965),
      colorContainer: Color(4278210392),
      onColorContainer: Color(4288606205),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(4286764000),
      onColor: Color(4278203965),
      colorContainer: Color(4278210392),
      onColorContainer: Color(4288606205),
    ),
    darkHighContrast: ColorFamily(
      color: Color(4286764000),
      onColor: Color(4278203965),
      colorContainer: Color(4278210392),
      onColorContainer: Color(4288606205),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        firstTerciaryVariant,
        secondTerciaryVariant,
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
