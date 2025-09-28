import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/app_colors.dart';
import 'package:movie_app/core/theme/app_sizing.dart';
import 'package:movie_app/l10n/l10n.dart';
import 'package:movie_app/router/app_router.dart';
import 'package:iconly/iconly.dart' as i;

@RoutePage()
class ShellScreen extends StatelessWidget {
  const ShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), ExploreRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          body: child,
          bottomNavigationBar: BlurContainer(
            color: Theme.of(context).colorScheme.surface,
            blurStrength: 10.0,
            borderRadius: 16.borderRadiusTop,
            child: Theme(
              data: ThemeData(
                splashFactory: NoSplash.splashFactory,
                highlightColor: Colors.transparent,
                primarySwatch: AppColors.primarySwatch,
                colorScheme: Theme.of(context).colorScheme,
                textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: const TextStyle(color: Colors.black),
                ),
                iconTheme: Theme.of(context).iconTheme,
              ),
              child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(i.IconlyLight.home),
                    activeIcon: Icon(i.IconlyBold.home),
                    label: context.l10n.home,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(i.IconlyLight.discovery),
                    activeIcon: Icon(i.IconlyBold.discovery),
                    label: context.l10n.explore,
                  ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(i.IconlyLight.play),
                  //   activeIcon: Icon(i.IconlyBold.play),
                  //   label: context.l10n.movies,
                  // ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(i.IconlyLight.bookmark),
                  //   activeIcon: Icon(i.IconlyBold.bookmark),
                  //   label: context.l10n.myList,
                  // ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(i.IconlyLight.profile),
                  //   activeIcon: Icon(i.IconlyBold.profile),
                  //   label: context.l10n.profile,
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class BlurContainer extends StatelessWidget {
  final Widget child;
  final double blurStrength;
  final BorderRadius borderRadius;
  final Color color;
  final EdgeInsets padding;

  const BlurContainer({
    super.key,
    required this.child,
    this.blurStrength = 5.0,
    this.borderRadius = BorderRadius.zero,
    this.color = Colors.white,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurStrength, sigmaY: blurStrength),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.2),
            borderRadius: borderRadius,
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.white.withValues(alpha: 0.1),
                width: 1.0,
              ),
            ),
          ),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
