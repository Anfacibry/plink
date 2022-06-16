import 'package:flutter/material.dart';

class TemaCustom extends ThemeExtension<TemaCustom> {
  final Color? cor;
  final BoxDecoration? decoration;
  final ButtonStyle? buttonStyle;
  TemaCustom({
    required this.cor,
    required this.decoration,
    required this.buttonStyle,
  });

  @override
  ThemeExtension<TemaCustom> copyWith(
      {Color? cor, BoxDecoration? decoration, ButtonStyle? buttonStyle}) {
    return TemaCustom(
      cor: cor ?? this.cor,
      decoration: decoration ?? this.decoration,
      buttonStyle: buttonStyle ?? this.buttonStyle,
    );
  }

  @override
  ThemeExtension<TemaCustom> lerp(ThemeExtension<TemaCustom>? other, double t) {
    if (other is! TemaCustom) {
      return this;
    }
    return TemaCustom(
        cor: Color.lerp(cor, other.cor, t),
        decoration: BoxDecoration.lerp(decoration, other.decoration, t),
        buttonStyle: ButtonStyle.lerp(buttonStyle, other.buttonStyle, t));
  }
}
