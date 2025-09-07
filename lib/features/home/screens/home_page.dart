import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).colorScheme.onPrimary,
      onRefresh: () async {

      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const UpcomingMovies(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(child: LatestMovies(size: 200)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(child: PopularMovies(size: 200)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(child: TopRatedMovies(size: 200)),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
        ],
      ),
    );
  }
}
