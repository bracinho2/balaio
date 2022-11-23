import 'package:flutter/material.dart';

class Responsivity {
  static double automatic(double tamanho, MediaQueryData data) {
    final width = data.size.width;
    final height = data.size.height;

    return width > height
        ? _calcHeight(tamanho, data)
        : _calcWidth(tamanho, data);
  }

  static double _calcWidth(double tamanho, MediaQueryData data) {
    final size = data.size;

    //inserir o tamanho da LARGURA do mockup;
    var coeficiente = tamanho / 414;

    return size.width * coeficiente;
  }

  static double _calcHeight(double tamanho, MediaQueryData data) {
    final size = data.size;

    //inserir o tamanho da ALTURA do mockup;
    var coeficiente = tamanho / 896;

    return size.height * coeficiente;
  }

  static double fontSize(double fontSize, MediaQueryData data) {
    final width = data.size.width;

    if (width > 320 && width < 767) return fontSize;
    if (width > 768 && width < 1023) return fontSize + 2;
    if (width > 1024 && width < 1279) return fontSize + 3;
    if (width > 1280) return fontSize + 4;

    return 12;
  }
}
