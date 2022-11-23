import 'package:flutter/material.dart';

class Adaptative extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Adaptative({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  bool _isMobile(Size size) => size.width < 850;

  bool _isTablet(Size size) => size.width < 1100 && size.width >= 850;

  bool _isDesktop(Size size) => size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    if (_isDesktop(mediaQueryData.size)) {
      return desktop;
    } else if (_isTablet(mediaQueryData.size) && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
