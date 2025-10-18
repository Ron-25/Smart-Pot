import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3c6939),
      surfaceTint: Color(0xff3c6939),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbcf0b4),
      onPrimaryContainer: Color(0xff245024),
      secondary: Color(0xff39693b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbaf0b6),
      onSecondaryContainer: Color(0xff215025),
      tertiary: Color(0xff35693e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffb7f1ba),
      onTertiaryContainer: Color(0xff1c5128),
      error: Color(0xff904a43),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad5),
      onErrorContainer: Color(0xff73342d),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff404942),
      outline: Color(0xff717972),
      outlineVariant: Color(0xffc0c9c0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffa1d39a),
      primaryFixed: Color(0xffbcf0b4),
      onPrimaryFixed: Color(0xff002204),
      primaryFixedDim: Color(0xffa1d39a),
      onPrimaryFixedVariant: Color(0xff245024),
      secondaryFixed: Color(0xffbaf0b6),
      onSecondaryFixed: Color(0xff002105),
      secondaryFixedDim: Color(0xff9fd49c),
      onSecondaryFixedVariant: Color(0xff215025),
      tertiaryFixed: Color(0xffb7f1ba),
      onTertiaryFixed: Color(0xff002109),
      tertiaryFixedDim: Color(0xff9cd49f),
      onTertiaryFixedVariant: Color(0xff1c5128),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff123f14),
      surfaceTint: Color(0xff3c6939),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4a7847),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0e3f16),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff487848),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff073f19),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff44784c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5e231e),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa25850),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff0e1115),
      onSurfaceVariant: Color(0xff303832),
      outline: Color(0xff4c554e),
      outlineVariant: Color(0xff676f68),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffa1d39a),
      primaryFixed: Color(0xff4a7847),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff325f30),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff487848),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff305f32),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff44784c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2c5f35),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc4c6cc),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffe6e8ee),
      surfaceContainerHigh: Color(0xffdbdde2),
      surfaceContainerHighest: Color(0xffcfd1d7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff05340b),
      surfaceTint: Color(0xff3c6939),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff265326),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff01340d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff245328),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003412),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1f532b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff511a15),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff76362f),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff262e28),
      outlineVariant: Color(0xff434b45),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffa1d39a),
      primaryFixed: Color(0xff265326),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff0d3b11),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff245328),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff093b13),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1f532b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff023c16),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb6b9be),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff1f6),
      surfaceContainer: Color(0xffe0e2e8),
      surfaceContainerHigh: Color(0xffd2d4da),
      surfaceContainerHighest: Color(0xffc4c6cc),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa1d39a),
      surfaceTint: Color(0xffa1d39a),
      onPrimary: Color(0xff0a390f),
      primaryContainer: Color(0xff245024),
      onPrimaryContainer: Color(0xffbcf0b4),
      secondary: Color(0xff9fd49c),
      onSecondary: Color(0xff063911),
      secondaryContainer: Color(0xff215025),
      onSecondaryContainer: Color(0xffbaf0b6),
      tertiary: Color(0xff9cd49f),
      onTertiary: Color(0xff003914),
      tertiaryContainer: Color(0xff1c5128),
      onTertiaryContainer: Color(0xffb7f1ba),
      error: Color(0xffffb4ab),
      onError: Color(0xff561e19),
      errorContainer: Color(0xff73342d),
      onErrorContainer: Color(0xffffdad5),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffc0c9c0),
      outline: Color(0xff8a938b),
      outlineVariant: Color(0xff404942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff3c6939),
      primaryFixed: Color(0xffbcf0b4),
      onPrimaryFixed: Color(0xff002204),
      primaryFixedDim: Color(0xffa1d39a),
      onPrimaryFixedVariant: Color(0xff245024),
      secondaryFixed: Color(0xffbaf0b6),
      onSecondaryFixed: Color(0xff002105),
      secondaryFixedDim: Color(0xff9fd49c),
      onSecondaryFixedVariant: Color(0xff215025),
      tertiaryFixed: Color(0xffb7f1ba),
      onTertiaryFixed: Color(0xff002109),
      tertiaryFixedDim: Color(0xff9cd49f),
      onTertiaryFixedVariant: Color(0xff1c5128),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb6eaae),
      surfaceTint: Color(0xffa1d39a),
      onPrimary: Color(0xff002d06),
      primaryContainer: Color(0xff6d9c67),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb4eab0),
      onSecondary: Color(0xff002d09),
      secondaryContainer: Color(0xff6b9d69),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb1eab4),
      onTertiary: Color(0xff002d0e),
      tertiaryContainer: Color(0xff679d6d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff48130f),
      errorContainer: Color(0xffcc7b72),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd6dfd6),
      outline: Color(0xffabb4ac),
      outlineVariant: Color(0xff8a938b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff255125),
      primaryFixed: Color(0xffbcf0b4),
      onPrimaryFixed: Color(0xff001602),
      primaryFixedDim: Color(0xffa1d39a),
      onPrimaryFixedVariant: Color(0xff123f14),
      secondaryFixed: Color(0xffbaf0b6),
      onSecondaryFixed: Color(0xff001603),
      secondaryFixedDim: Color(0xff9fd49c),
      onSecondaryFixedVariant: Color(0xff0e3f16),
      tertiaryFixed: Color(0xffb7f1ba),
      onTertiaryFixed: Color(0xff001504),
      tertiaryFixedDim: Color(0xff9cd49f),
      onTertiaryFixedVariant: Color(0xff073f19),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff414549),
      surfaceContainerLowest: Color(0xff05080b),
      surfaceContainerLow: Color(0xff1a1e22),
      surfaceContainer: Color(0xff25282c),
      surfaceContainerHigh: Color(0xff303337),
      surfaceContainerHighest: Color(0xff3b3e43),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcafec0),
      surfaceTint: Color(0xffa1d39a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff9dcf96),
      onPrimaryContainer: Color(0xff000f01),
      secondary: Color(0xffc8fec3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff9bd098),
      onSecondaryContainer: Color(0xff000f02),
      tertiary: Color(0xffc4fec7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff98d09c),
      onTertiaryContainer: Color(0xff000f03),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeaf2e9),
      outlineVariant: Color(0xffbcc5bc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff255125),
      primaryFixed: Color(0xffbcf0b4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa1d39a),
      onPrimaryFixedVariant: Color(0xff001602),
      secondaryFixed: Color(0xffbaf0b6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff9fd49c),
      onSecondaryFixedVariant: Color(0xff001603),
      tertiaryFixed: Color(0xffb7f1ba),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff9cd49f),
      onTertiaryFixedVariant: Color(0xff001504),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff4d5055),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d2024),
      surfaceContainer: Color(0xff2d3135),
      surfaceContainerHigh: Color(0xff383c40),
      surfaceContainerHighest: Color(0xff44474c),
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
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
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
