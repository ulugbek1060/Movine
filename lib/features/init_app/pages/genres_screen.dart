import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/presentation/default_views.dart';
import 'package:movie_app/core/theme/app_sizing.dart';
import 'package:movie_app/domain/entities/genre_entity.dart';
import 'package:movie_app/features/init_app/provider/genre_provider.dart';
import 'package:movie_app/pages/widgets/progress_view.dart';
import 'package:movie_app/utils/strings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'genre_item_widget.dart';

@RoutePage()
class GenresScreen extends ConsumerWidget {
  const GenresScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: defAppBar(
        title: 'Chose Your Interests',
        onBack: () => context.back(),
      ),
      body: const _MainView(),
    );
  }
}

class _MainView extends ConsumerWidget {
  const _MainView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(genreProvider);
    return state.when(
      data: (genres) => _SelectionView(genres: genres),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const ProgressView(),
    );
  }
}

class _SelectionView extends ConsumerWidget {
  const _SelectionView({required this.genres});

  final List<GenreEntity> genres;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: 12.marginAll,
          child: Text(
            style: Theme.of(context).textTheme.bodyMedium,
            choseFavoriteGenre,
          ),
        ),
        20.spaceH,
        Expanded(
          child: Container(
            margin: 8.marginAll,
            child: Wrap(
              children:
                  genres
                      .map(
                        (item) => GenreItemWidget(
                          selected: item.isActive,
                          genre: item.name,
                          onSelected:
                              () => ref
                                  .read(genreProvider.notifier)
                                  .setGenre(item),
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
        Padding(
          padding: 16.paddingAll,
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(onPressed: null, child: const Text(skip)),
              ),
              12.spaceW,
              Expanded(
                child: ElevatedButton(
                  onPressed: () => ref.read(genreProvider.notifier).setGenres(),
                  child: const Text(continui),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
