import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';

class MovieItemCard extends StatelessWidget {
  const MovieItemCard({super.key, required this.movie});

  final MovieEntity movie;

  // void navigate(BuildContext context, String movieId) {
  //   Navigator.of(context).push(DetailPage.route(movieId));
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // navigate(context, movie.id);
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: movie.posterPath,
                placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.secondary,
                )),
                errorWidget: (context, url, error) => Icon(
                  IconlyBold.image,
                  size: 100,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  '${movie.voteAverage}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
