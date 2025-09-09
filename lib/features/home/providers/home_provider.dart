import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/utils/pagination_state.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/data/home_repository_provider.dart';
import 'package:movie_app/features/home/domain/i_home_repository.dart';
import 'package:movie_app/features/home/domain/movies_type_enum.dart';

final nowPlayingProvider = StateNotifierProvider.autoDispose<
  MovieList,
  AsyncValue<PaginationState<MovieEntity>>
>(
  (ref) => MovieList(
    homeRepository: ref.read(homeRepositoryProvider),
    type: MovieType.nowPlaying,
  ),
);

final upcomingProvider = StateNotifierProvider.autoDispose<
  MovieList,
  AsyncValue<PaginationState<MovieEntity>>
>(
  (ref) => MovieList(
    homeRepository: ref.read(homeRepositoryProvider),
    type: MovieType.upcoming,
  ),
);

final topRatedProvider = StateNotifierProvider.autoDispose<
  MovieList,
  AsyncValue<PaginationState<MovieEntity>>
>(
  (ref) => MovieList(
    homeRepository: ref.read(homeRepositoryProvider),
    type: MovieType.topRated,
  ),
);

final popularProvider = StateNotifierProvider.autoDispose<
  MovieList,
  AsyncValue<PaginationState<MovieEntity>>
>(
  (ref) => MovieList(
    homeRepository: ref.read(homeRepositoryProvider),
    type: MovieType.popular,
  ),
);

class MovieList
    extends StateNotifier<AsyncValue<PaginationState<MovieEntity>>> {
  MovieList({required this.homeRepository, required this.type})
    : super(AsyncValue.loading());
  final IHomeRepository homeRepository;
  final MovieType type;

  Future<void> fetchNextPage() async {
    if (state.value == null) return;
    final value = state.value!;
    if (value.hasReachedMax || value.isLoading) return;

    state = AsyncValue.data(value.copyWith(isLoading: true));

    final nextPage = value.currentPage + 1;
    final result = await homeRepository.getMoviesByType(
      type: type,
      page: nextPage,
    );

    result.fold(
      onSuccess: (data) {
        final newState = value.copyWith(
          items: [...value.items, ...data.results],
          currentPage: nextPage,
          hasReachedMax: data.totalPages == nextPage,
          isLoading: false,
        );
        state = AsyncValue.data(newState);
      },
      onError: (message, error, stackTrace) {
        state = AsyncValue.error(error, stackTrace ?? StackTrace.current);
      },
    );
  }

  Future<void> refresh() async {
    state = AsyncValue.data(
      PaginationState<MovieEntity>(
        items: [],
        currentPage: 0,
        hasReachedMax: false,
        isLoading: false,
      ),
    );
    await fetchNextPage();
  }
}

/// Differences Between AutoDisposeStateNotifierProviderFamily and AutoDisposeStateNotifierProvider
/// Both AutoDisposeStateNotifierProviderFamily and AutoDisposeStateNotifierProvider are variants of Riverpod's StateNotifierProvider designed for managing mutable state with a StateNotifier class (e.g., for handling complex state like paginated lists or forms). They both incorporate auto-dispose behavior, meaning the provider (and its associated notifier instance) is automatically disposed of when no longer watched by any widget or provider, helping prevent memory leaks in dynamic UIs like navigation-heavy apps. However, the key distinction lies in parameterization (family support) for creating multiple isolated instances.
/// In Riverpod 2.0+, the syntax has evolved to use "named constructors" on the base StateNotifierProvider for better consistency: StateNotifierProvider.autoDispose for the non-family version and StateNotifierProvider.autoDispose.family for the family version. The old standalone classes like AutoDisposeStateNotifierProviderFamily are still available but deprecated in favor of the new syntax—the behavior remains identical.
/// 1. Core Purpose and Usage
///
/// AutoDisposeStateNotifierProvider (or StateNotifierProvider.autoDispose):
///
/// Creates a single, global instance of a StateNotifier that manages shared state across your app.
/// Ideal for state that doesn't need to be parameterized or isolated (e.g., a single app-wide theme notifier or a global user settings manager).
/// No external argument is passed; the notifier is created once and reused wherever watched.
/// When to use: For non-dynamic, app-wide mutable state where disposal on unwatch is desired (e.g., temporary UI state on a specific screen that should reset when navigating away).
///
///
/// AutoDisposeStateNotifierProviderFamily (or StateNotifierProvider.autoDispose.family):
///
/// Creates a family of providers, each tied to a unique external parameter (argument). This generates separate notifier instances for different argument values, allowing isolated state per "key."
/// Essential for dynamic, parameterized state (e.g., a separate paginated movie list for each MovieType like "nowPlaying" vs. "upcoming"—changes to one don't affect the other).
/// When to use: For scenarios requiring multiple similar notifiers (e.g., user-specific data like cartProvider(userId) or category-specific lists like movieListProvider(movieType)). The family ensures each instance auto-disposes independently when its specific argument is no longer watched.
///
///
///
/// 2. Generic Types
/// Both share the same base generics for the notifier and state, but the family adds a third for the argument:
///
/// AutoDisposeStateNotifierProvider<NotifierT extends StateNotifier<statet>, StateT></statet>:
///
/// NotifierT: Your custom StateNotifier subclass (e.g., MovieList extends StateNotifier<AsyncValue<PaginationState<MovieEntity>>>).
/// StateT: The type of the notifier's state property (e.g., AsyncValue<PaginationState<MovieEntity>> for async handling).
/// No argument generic—creation function takes only ref: (ref) => MovieList(homeRepository: ref.read(homeRepositoryProvider)).
///
///
/// AutoDisposeStateNotifierProviderFamily<NotifierT extends StateNotifier<statet>, StateT, Arg></statet>:
///
/// Same as above for NotifierT and StateT.
/// Arg: The type of the family argument (e.g., MovieType enum or String for user IDs).
/// Creation function takes ref and arg: (ref, arg) => MovieList(homeRepository: ref.read(homeRepositoryProvider), type: arg).
///
///
///
/// When watching:
///
/// Non-family: ref.watch(movieListProvider) yields StateT (e.g., AsyncValue<PaginationState<MovieEntity>>).
/// Family: ref.watch(movieListProvider(MovieType.nowPlaying)) yields StateT for that specific instance.
///
/// 3. Auto-Dispose Behavior
///
/// Shared: Both dispose the notifier (calling its dispose() method if overridden) when no listeners remain. This is crucial for resource-heavy state (e.g., stopping streams or timers in the notifier). Re-watching recreates the instance fresh.
/// Difference:
///
/// Non-family: The single instance disposes only if globally unwatched (e.g., when leaving the last screen using it).
/// Family: Each parameterized instance disposes independently based on its argument (e.g., unwatching movieListProvider(nowPlaying) disposes only the "nowPlaying" notifier, while "upcoming" stays alive if still watched elsewhere). This provides finer-grained memory management.
///
///
///
/// 4. Example Comparison
/// Assume a MovieList notifier for paginated movies (extending StateNotifier<AsyncValue<PaginationState<MovieEntity>>> with a fetchNextPage method).
///
/// Non-Family (AutoDisposeStateNotifierProvider): Single shared list (e.g., hardcoded to all movies).
/// dartfinal movieListProvider = StateNotifierProvider.autoDispose<MovieList, AsyncValue<PaginationState<MovieEntity>>>(
///   (ref) => MovieList(homeRepository: ref.read(homeRepositoryProvider)),  /// No arg
/// );
///
/// Usage: ref.watch(movieListProvider).value?.items (shared across app; auto-disposes if unwatched globally).
///
///
/// Family (AutoDisposeStateNotifierProviderFamily): Separate lists per type.
/// dartfinal movieListProvider = StateNotifierProvider.autoDispose.family<MovieList, AsyncValue<PaginationState<MovieEntity>>, MovieType>(
///   (ref, type) => MovieList(homeRepository: ref.read(homeRepositoryProvider), type: type),  /// Uses arg
/// );
///
/// Usage: ref.watch(movieListProvider(MovieType.nowPlaying)).value?.items (isolated per type; each auto-disposes independently).
///
///
///
/// 5. Trade-offs and Best Practices
///
/// Performance/Memory: Family uses more instances but isolates state (better for scalability in large apps). Non-family is simpler but risks shared state pollution.
/// Migration to Code Generation (Riverpod 2.0+ Recommended): Use @riverpod with AsyncNotifier to avoid manual generics/boilerplate. For family: @riverpod on a method with MovieType arg generates the equivalent AutoDisposeAsyncNotifierProviderFamily. Run dart run build_runner build.
/// Common Pitfalls: Non-family may recreate state unexpectedly on dispose/recreate; family requires unique args to avoid accidental sharing. Always override dispose() in your notifier for cleanup.
/// Deprecations: In Riverpod 2.5+, the standalone AutoDispose*Family classes are hidden by default—use the named constructor syntax for future-proofing. For non-mutable or read-only state, prefer Provider or FutureProvider variants instead of StateNotifier.
///
/// This distinction makes family providers essential for flexible, scalable apps, while the non-family keeps things simple for global state.
