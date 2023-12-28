import 'package:flutter/material.dart';
import 'package:flutter_starter_template/theme/app_theme.dart';

Widget kRefreshIndicator({
  required Future<void> Function() onRefresh,
  required Widget child,
}) {
  return RefreshIndicator(
    triggerMode: RefreshIndicatorTriggerMode.anywhere,
    backgroundColor: primaryColor,
    color: Colors.white,
    onRefresh: onRefresh,
    child: child,
  );
}
