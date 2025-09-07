
class PaginationState<T> {
  final List<T> items;
  final int currentPage;
  final bool hasReachedMax;
  final bool isLoading;

  PaginationState({
    required this.items,
    required this.currentPage,
    required this.hasReachedMax,
    required this.isLoading,
  });

  PaginationState<T> copyWith({
    List<T>? items,
    int? currentPage,
    bool? hasReachedMax,
    bool? isLoading,
  }) {
    return PaginationState<T>(
      items: items ?? this.items,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
