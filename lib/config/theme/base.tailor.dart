// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseThemeTailorMixin on ThemeExtension<BaseTheme> {
  Color get mainRed;
  Color get red;
  Color get background;
  Color get mainBlack;
  Color get grayLight;
  Color get pink;
  Color get yellow;
  Color get blue;
  Color get green;
  Color get primarywhite;
  Locale get locale;

  @override
  BaseTheme copyWith({
    Color? mainRed,
    Color? red,
    Color? background,
    Color? mainBlack,
    Color? grayLight,
    Color? pink,
    Color? yellow,
    Color? blue,
    Color? green,
    Color? primarywhite,
    Locale? locale,
  }) {
    return BaseTheme(
      mainRed: mainRed ?? this.mainRed,
      red: red ?? this.red,
      background: background ?? this.background,
      mainBlack: mainBlack ?? this.mainBlack,
      grayLight: grayLight ?? this.grayLight,
      pink: pink ?? this.pink,
      yellow: yellow ?? this.yellow,
      blue: blue ?? this.blue,
      green: green ?? this.green,
      primarywhite: primarywhite ?? this.primarywhite,
      locale: locale ?? this.locale,
    );
  }

  @override
  BaseTheme lerp(covariant ThemeExtension<BaseTheme>? other, double t) {
    if (other is! BaseTheme) return this as BaseTheme;
    return BaseTheme(
      mainRed: Color.lerp(mainRed, other.mainRed, t)!,
      red: Color.lerp(red, other.red, t)!,
      background: Color.lerp(background, other.background, t)!,
      mainBlack: Color.lerp(mainBlack, other.mainBlack, t)!,
      grayLight: Color.lerp(grayLight, other.grayLight, t)!,
      pink: Color.lerp(pink, other.pink, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      green: Color.lerp(green, other.green, t)!,
      primarywhite: Color.lerp(primarywhite, other.primarywhite, t)!,
      locale: t < 0.5 ? locale : other.locale,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseTheme &&
            const DeepCollectionEquality().equals(mainRed, other.mainRed) &&
            const DeepCollectionEquality().equals(red, other.red) &&
            const DeepCollectionEquality().equals(
              background,
              other.background,
            ) &&
            const DeepCollectionEquality().equals(mainBlack, other.mainBlack) &&
            const DeepCollectionEquality().equals(grayLight, other.grayLight) &&
            const DeepCollectionEquality().equals(pink, other.pink) &&
            const DeepCollectionEquality().equals(yellow, other.yellow) &&
            const DeepCollectionEquality().equals(blue, other.blue) &&
            const DeepCollectionEquality().equals(green, other.green) &&
            const DeepCollectionEquality().equals(
              primarywhite,
              other.primarywhite,
            ) &&
            const DeepCollectionEquality().equals(locale, other.locale));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(mainRed),
      const DeepCollectionEquality().hash(red),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(mainBlack),
      const DeepCollectionEquality().hash(grayLight),
      const DeepCollectionEquality().hash(pink),
      const DeepCollectionEquality().hash(yellow),
      const DeepCollectionEquality().hash(blue),
      const DeepCollectionEquality().hash(green),
      const DeepCollectionEquality().hash(primarywhite),
      const DeepCollectionEquality().hash(locale),
    );
  }
}
