part of 'watchlist_movie_bloc.dart';

@freezed
abstract class WatchlistMovieState with _$WatchlistMovieState {
  const factory WatchlistMovieState({
    @Default(RequestState.empty) RequestState state,
    @Default([]) List<Movie> movies,
    @Default(null) String? errorMessage,
  }) = _WatchlistMovieState;
}
