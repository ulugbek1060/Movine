import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/utils/sliver_grid_delegate.dart';
import 'package:movie_app/utils/status.dart';

@RoutePage()
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class _ExploreView extends StatefulWidget {
//   const _ExploreView();
//
//   @override
//   State<_ExploreView> createState() => _ExploreViewState();
// }
//
// class _ExploreViewState extends State<_ExploreView> {
//   late ScrollController _scrollController;
//
//   @override
//   void initState() {
//     _scrollController = ScrollController()..addListener(_onScroll);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   Future<void> refresh() async {
//     context.read<ExploreBloc>().add(FetchMoviesEvent());
//   }
//
//   void _onScroll() {
//     if (_isBottom) {
//       context.read<ExploreBloc>().add(FetchMoviesEvent());
//     }
//   }
//
//   bool get _isBottom {
//     if (!_scrollController.hasClients) return false;
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.offset;
//     return currentScroll >= (maxScroll * 0.9);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: RefreshIndicator(
//         color: Theme.of(context).colorScheme.onPrimary,
//         onRefresh: refresh,
//         child: CustomScrollView(
//           controller: _scrollController,
//           slivers: [
//             const AppSearchBar(),
//             ..._buildComponents(state),
//           ],
//         ),
//       ),
//     );
//   }
//
//   List<Widget> _buildComponents(ExploreState state) {
//     if (state is ExploreByQueryState) {
//       if (state.status == Status.pending && state.page == 1) {
//         return const [SliverFillRemaining(child: ProgressView())];
//       }
//       return [
//         _MoviesSliverGrid(movies: state.movies),
//         _SliverProgressBar(isLoading: state.status == Status.pending),
//       ];
//     } else if (state is ExploreByFilterState) {
//       if (state.status == Status.pending && state.page == 1) {
//         return const [SliverFillRemaining(child: ProgressView())];
//       }
//       return [
//         _MoviesSliverGrid(movies: state.movies),
//         _SliverProgressBar(isLoading: state.status == Status.pending),
//       ];
//     }
//     return const [SliverFillRemaining(child: EmptyView())];
//   }
// }
//
// class _MoviesSliverGrid extends StatelessWidget {
//   const _MoviesSliverGrid({Key? key, required this.movies}) : super(key: key);
//   final List<MovieItem> movies;
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverPadding(
//       padding: const EdgeInsets.all(8.0),
//       sliver: SliverGrid(
//         gridDelegate:  gridDelegate(context),
//         delegate: SliverChildBuilderDelegate(
//           childCount: movies.length,
//           (context, index) => MovieItemCard(movie: movies[index]),
//         ),
//       ),
//     );
//   }
// }

// class _SliverProgressBar extends StatelessWidget {
//   const _SliverProgressBar({Key? key, required this.isLoading})
//       : super(key: key);
//
//   final bool isLoading;
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(
//             child: Container(
//               margin: const EdgeInsets.all(8.0),
//               child: const ProgressView(),
//             ),
//           )
//         : const SliverToBoxAdapter(
//             child: SizedBox(),
//           );
//   }
// }
