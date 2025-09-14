import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/theme/app_sizing.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/features/home/screens/widgets/horizontal_movies_list_widget.dart';
import 'package:movie_app/l10n/l10n.dart';
import 'package:movie_app/pages/widgets/progress_view.dart';

class PopularMovies extends StatelessWidget {
  final double width;
  final double height;

  const PopularMovies({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: 16.marginAll,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.popular,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              GestureDetector(
                onTap: () {
                  // navigateToAllMovies(context);
                },
                child: Text(
                  context.l10n.seeAll,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height,
          child: _MoviesView(height: height, width: width),
        ),
      ],
    );
  }
}

class _MoviesView extends ConsumerWidget {
  const _MoviesView({required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(popularProvider);
    return state.when(
      data:
          (data) => HorizontalMoviesListWidget(
        height: height,
        width: width,
        items: data.items,
      ),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const ProgressView(),
    );
  }
}
