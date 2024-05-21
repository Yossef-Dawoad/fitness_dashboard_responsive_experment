import 'package:flutter/material.dart';

class ResponsiveScreenHandeller extends StatelessWidget {
  const ResponsiveScreenHandeller({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
    // this.wideDesktop,
  });
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  // final Widget? wideDesktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      print(constraints.maxWidth);
      return switch (constraints.maxWidth) {
        >= 1200 => desktop ?? const SizedBox(),
        >= 920 => tablet ?? const SizedBox(),
        <= 920 => mobile ?? const SizedBox(),
        _ => const SizedBox(),
      };
    });
  }
}
