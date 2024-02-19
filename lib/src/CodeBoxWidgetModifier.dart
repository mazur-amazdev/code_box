import 'package:flutter/material.dart';

extension CodeBoxWidgetModifier on Widget {
  /// adds a padding as a modifier to a widget to be more readable in large build blocs
  Widget padding(
      {double top = 0.0,
      double left = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return Padding(
      padding:
          EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
      child: this,
    );
  }

  /// adds a scrollbar to a widget
  Widget scrollbar() {
    return Scrollbar(
      child: this,
    );
  }

  /// defines a safe area to a widget
  Widget safeArea(
      {Key? key,
      bool left = true,
      bool top = true,
      bool right = true,
      bool bottom = true,
      EdgeInsets minimum = EdgeInsets.zero,
      bool maintainBottomViewPadding = false}) {
    return SafeArea(
        key: key,
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        minimum: minimum,
        maintainBottomViewPadding: maintainBottomViewPadding,
        child: this);
  }
}
