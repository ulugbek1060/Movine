import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:movie_app/core/presentation/default_views.dart';
import 'package:movie_app/core/theme/app_sizing.dart';

class MovieItemCard extends StatelessWidget {
  const MovieItemCard({
    super.key,
    this.onPressed,
    this.title,
    required this.posterUrl,
    this.backdropUrl,
    required this.votes,
  });

  final OnPressed? onPressed;
  final String? title;
  final String posterUrl;
  final String? backdropUrl;
  final String votes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: 10.borderRadiusAll,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: posterUrl,
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
              margin: 8.marginAll,
              padding: 4.paddingAll,
              decoration: BoxDecoration(
                borderRadius: 8.borderRadiusAll,
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Text(
                votes,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
