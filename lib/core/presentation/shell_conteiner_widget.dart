import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/app_sizing.dart';

class ShellContainerWidget extends StatelessWidget {
  const ShellContainerWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 100.paddingBottom,
      color: Theme.of(context).colorScheme.surface,
      child: child,
    );
  }
}
