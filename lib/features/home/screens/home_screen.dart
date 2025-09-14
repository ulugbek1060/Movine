import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/presentation/shell_conteiner_widget.dart';
import 'package:movie_app/core/theme/app_sizing.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/screens/widgets/now_playing_movies.dart';
import 'package:movie_app/features/home/screens/widgets/popular_movies.dart';
import 'package:movie_app/features/home/screens/widgets/top_rated_movies.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) => _fetchMovies());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    final height = size.height;
    return RefreshIndicator(
      color: Theme.of(context).colorScheme.onPrimary,
      onRefresh: _fetchMovies,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UpcomingMovies(height: width * 0.9, width: width),
          ),
          SliverToBoxAdapter(
            child: NowPlayingWidget(width: width, height: width * 0.5),
          ),
          SliverToBoxAdapter(
            child: PopularMovies(width: width, height: width * 0.5),
          ),
          SliverToBoxAdapter(
            child: TopRatedMovies(width: width, height: width * 0.5),
          ),
          SliverToBoxAdapter(
            child: 100.spaceH
          ),
        ],
      ),
    );
  }

  Future<void> _fetchMovies() => Future.wait([
    ref.read(upcomingProvider.notifier).refresh(),
    ref.read(nowPlayingProvider.notifier).refresh(),
    ref.read(popularProvider.notifier).refresh(),
    ref.read(topRatedProvider.notifier).refresh(),
  ]);
}
