import 'package:auto_route/auto_route.dart';
import 'package:movie_app/features/home/screens/home_screen.dart';
import 'package:movie_app/features/init_app/screens/genres_screen.dart';
import 'package:movie_app/features/init_app/screens/welcome_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: GenresRoute.page),
    AutoRoute(page: HomeRoute.page,  initial: true),
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