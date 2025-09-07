import 'package:auto_route/auto_route.dart';
import 'package:movie_app/features/init_app/pages/genres_screen.dart';

import '../features/init_app/pages/welcome_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'screen')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WelcomeScreenRoute.page, initial: true),
    AutoRoute(page: GenresScreenRoute.page),
  ];
}

// If you don't need to pass arguments, you don't need this class.
// This tells auto_route what data the DetailsScreen expects.
// @RoutePage()
// class DetailsArguments {
//   final int id;
//   final String name;
//
//   DetailsArguments({required this.id, required this.name});
// }