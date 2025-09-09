// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:movie_app/core/theme/app_sizing.dart';
// import 'package:movie_app/domain/entities/movie_entity.dart';
// import 'package:movie_app/features/home/providers/home_provider.dart';
// import 'package:movie_app/l10n/l10n.dart';
// import 'package:movie_app/features/home/screens/widgets/movie_item_card.dart';
// import 'package:movie_app/pages/widgets/progress_view.dart';
//
// class NowPlayingWidget extends StatelessWidget {
//   const NowPlayingWidget({
//     super.key,
//     required this.width,
//     required this.height,
//   });
//   final double width;
//   final double height;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Container(
//           margin: 20.marginAll,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 context.l10n.nowPlaying,
//                 style: Theme.of(context).textTheme.titleMedium,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   // context.pushRoute(
//                   // AllMoviesRoute(
//                   //   movieType: MovieType.nowPlaying,
//                   // ),
//                   // );
//                 },
//                 child: Text(
//                   context.l10n.seeAll,
//                   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     color: Theme.of(context).colorScheme.secondary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: height, child: _MoviesView(itemSize: width * 0.8)),
//       ],
//     );
//   }
// }
//
// class _MoviesView extends ConsumerWidget {
//   const _MoviesView({required this.itemSize});
//   final double itemSize;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(homeProviderProvider(MovieType.nowPlaying));
//     return state.when(
//       data: (data) => _buildList(data.items),
//       error: (error, stackTrace) => ErrorWidget(error),
//       loading: () => const ProgressView(),
//     );
//   }
//
//   ListView _buildList(List<MovieEntity> items) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: items.length,
//       itemBuilder: (context, index) {
//         return Container(
//           margin: EdgeInsets.only(
//             left: 8,
//             right: index == items.length - 1 ? 8 : 0,
//           ),
//           height: itemSize,
//           width: itemSize * 0.8,
//           child: MovieItemCard(movie: items[index]),
//         );
//       },
//     );
//   }
// }
