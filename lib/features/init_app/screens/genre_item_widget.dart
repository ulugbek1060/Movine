import 'package:flutter/material.dart';
import 'package:movie_app/core/theme/app_colors.dart';

class GenreItemWidget extends StatelessWidget {
  final String genre;
  final bool selected;
  final void Function() onSelected;

  const GenreItemWidget({
    super.key,
    required this.selected,
    required this.genre,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color:
              selected
                  ? Theme.of(context).colorScheme.secondary
                  : Colors.transparent,
          border: Border.all(width: 2, color: AppColors.secondaryColor),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          genre,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
            color:
                selected
                    ? Colors.white
                    : Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
