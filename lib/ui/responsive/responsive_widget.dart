import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    this.largeScreen,
    this.smallScreen,
  });

  final Widget? smallScreen;
  final Widget? largeScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth == 600) return smallScreen ?? const SizedBox();
        return largeScreen ?? const SizedBox();
      },
    );
  }
}
