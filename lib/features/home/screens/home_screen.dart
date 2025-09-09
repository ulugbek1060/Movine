import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/screens/widgets/upcoming_movies.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(movieListProviderProvider(MovieType.upcoming).notifier)
          .refresh();
      ref
          .read(movieListProviderProvider(MovieType.nowPlaying).notifier)
          .refresh();
      ref.read(movieListProviderProvider(MovieType.popular).notifier)
          .refresh();
      ref
          .read(movieListProviderProvider(MovieType.topRated).notifier)
          .refresh();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).colorScheme.onPrimary,
      onRefresh:
          () => Future.wait([
            ref
                .read(movieListProviderProvider(MovieType.upcoming).notifier)
                .refresh(),
            ref
                .read(movieListProviderProvider(MovieType.nowPlaying).notifier)
                .refresh(),
            ref
                .read(movieListProviderProvider(MovieType.popular).notifier)
                .refresh(),
            ref
                .read(movieListProviderProvider(MovieType.topRated).notifier)
                .refresh(),
          ]),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const UpcomingMovies(),
            ),
          ),
          // const SliverToBoxAdapter(
          //   child: SizedBox(
          //     child: NowPlayingWidget(width: double.infinity, height: 200),
          //   ),
          // ),
          // const SliverToBoxAdapter(
          //   child: SizedBox(child: PopularMovies(size: 200)),
          // ),
          // const SliverToBoxAdapter(
          //   child: SizedBox(child: TopRatedMovies(size: 200)),
          // ),
          // const SliverToBoxAdapter(child: SizedBox(height: 8)),
        ],
      ),
    );
  }
}
