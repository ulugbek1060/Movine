import 'package:flutter/material.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/screens/widgets/movie_item_card.dart';

class HorizontalMoviesListWidget extends StatelessWidget {
  const HorizontalMoviesListWidget({
    super.key,
    required this.height,
    required this.width,
    required this.items,
  });

  final double height;
  final double width;
  final List<MovieEntity> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: 8,
              right: index == items.length - 1 ? 8 : 0,
            ),
            width: width * 0.4,
            child: MovieItemCard(
              posterUrl: items[index].posterUrl,
              backdropUrl: items[index].backdropUrl,
              title: items[index].title,
              votes: items[index].votes,
              onPressed: () {
                // navigate to movie details screen
              },
            ),
          );
        },
      ),
    );
  }
}
