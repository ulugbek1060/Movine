import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/app_assets_path.dart';
import 'package:movie_app/core/theme/app_sizing.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/router/app_router.dart';
import 'package:movie_app/utils/strings.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssetsPath.onBoardingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: 20.marginAll,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  TypewriterAnimatedText(
                    welcomeText,
                    textStyle: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Colors.white),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
              ),
              10.spaceH,
              Text(
                welcomeContent,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              30.spaceH,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => context.pushRoute(const GenresRoute()),
                  style: AppTheme.raisedButtonStyle,
                  child: const Text(getStarted),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
