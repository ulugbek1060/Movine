import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_app/core/presentation/error_view.dart';
import 'package:movie_app/core/theme/app_typography.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/features/explore/domain/filter_data.dart';
import 'package:movie_app/features/explore/providers/explore_provider.dart';
import 'package:movie_app/features/home/screens/widgets/movie_item_card.dart';
import 'package:movie_app/l10n/l10n.dart';
import 'package:movie_app/pages/widgets/progress_view.dart';
import 'package:movie_app/utils/sliver_grid_delegate.dart';

@RoutePage()
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) => _View();
}

class _View extends ConsumerStatefulWidget {
  const _View();

  @override
  ConsumerState<_View> createState() => _ViewState();
}

class _ViewState extends ConsumerState<_View> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> refresh() => ref.read(exploreProvider.notifier).refresh();

  void _onScroll() {
    if (_isBottom) {
      ref.read(exploreProvider.notifier).nextPage();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(exploreProvider);

    final sliver = state.when(
      loading: () => const SliverFillRemaining(child: ProgressView()),
      error: (error, stackTrace) => const SliverFillRemaining(child: ErrorView()),
      data: (data) => _MoviesSliverGrid(movies: data.results),
    );

    return SafeArea(
      child: RefreshIndicator(
        color: Theme.of(context).colorScheme.onPrimary,
        onRefresh: refresh,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [const AppSearchBar(), sliver],
        ),
      ),
    );
  }
}

class _MoviesSliverGrid extends StatelessWidget {
  const _MoviesSliverGrid({required this.movies});

  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverGrid(
        gridDelegate: gridDelegate(context),
        delegate: SliverChildBuilderDelegate(
          childCount: movies.length,
          (context, index) => MovieItemCard(
            onPressed: (){},
            title: movies[index].title,
            posterUrl: movies[index].posterUrl,
            backdropUrl: movies[index].backdropUrl,
            votes: movies[index].votes,
          ),
        ),
      ),
    );
  }
}

class _SliverProgressBar extends StatelessWidget {
  const _SliverProgressBar({required this.isLoading});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: const ProgressView(),
          ),
        )
        : const SliverToBoxAdapter(child: SizedBox());
  }
}

class AppSearchBar extends ConsumerWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      expandedHeight: 70,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: AppTypography.labelMedium,
                  cursorColor: Theme.of(context).colorScheme.secondary,
                  decoration: InputDecoration(
                    filled: true,
                    hoverColor: Colors.transparent,
                    contentPadding: const EdgeInsets.all(4.0),
                    fillColor: Theme.of(context).colorScheme.secondary.withAlpha(50),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    hintStyle: AppTypography.labelMedium.copyWith(
                      color: Colors.grey,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        IconlyLight.search,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    hintText: context.l10n.search,
                  ),
                  onSubmitted: (value) {
                    ref.read(filterStateProvider.notifier).state = FilterData(
                      query: value,
                    );
                  },
                  textInputAction: TextInputAction.search,
                ),
              ),
              const SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  color: Theme.of(context).colorScheme.secondary.withAlpha(50),
                ),
                child: IconButton(
                  onPressed: () {
                    // _showDialog(context);
                  },
                  icon: Icon(
                    IconlyBold.filter,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

