import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_app/core/theme/app_colors.dart';
import 'package:movie_app/core/theme/app_sizing.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/providers/home_provider.dart';
import 'package:movie_app/l10n/l10n.dart';
import 'package:movie_app/pages/widgets/progress_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpcomingMovies extends ConsumerStatefulWidget {
  final double height;
  final double width;

  const UpcomingMovies({super.key, required this.height, required this.width});

  @override
  ConsumerState<UpcomingMovies> createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends ConsumerState<UpcomingMovies> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(upcomingProvider);
    return state.when(
      data: (data) => _buildWidget(data.items),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const ProgressView(),
    );
  }

  Widget _buildWidget(List<MovieEntity> items) => SizedBox(
    height: widget.height,
    width: widget.width,
    child: PageView.builder(
      controller: _pageController,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final movie = items[index];
        return _MovieItemPage(movie: movie);
      },
    ),
  );
}

class _MovieItemPage extends StatelessWidget {
  const _MovieItemPage({required this.movie});

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl: movie.posterUrl,
            placeholder:
                (context, url) => Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
            errorWidget:
                (context, url, error) => Icon(
                  IconlyBold.image,
                  size: 100,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [Colors.transparent, AppColors.darkPrimaryColor],
            ),
          ),
        ),
        Container(
          margin: 20.marginAll,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.white),
              ),
              8.spaceH,
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // TODO: play movie
                    },
                    icon: const Icon(Icons.play_circle, color: Colors.white),
                    label: Text(
                      context.l10n.play,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  ),
                  12.spaceW,
                  OutlinedButton.icon(
                    onPressed: () {
                      // TODO: add to my list
                    },
                    icon: const Icon(Icons.add, color: Colors.white),
                    label: Text(
                      context.l10n.myList,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
