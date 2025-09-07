import 'package:flutter/material.dart';

typedef OnPressed = VoidCallback;

PreferredSizeWidget defAppBar({
  required String title,
  bool centerTitle = false,
  OnPressed? onBack,
  List<Widget>? actions,
}) {
  return AppBar(
    title: Text(title),
    leading:
        onBack != null
            ? IconButton(
              onPressed: onBack,
              icon: Icon(Icons.arrow_back_ios_rounded),
            )
            : const SizedBox.shrink(),
    centerTitle: centerTitle,
    actions: actions,
  );
}
