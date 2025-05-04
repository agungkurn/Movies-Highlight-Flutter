part of 'movie_detail_bloc.dart';

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default(RequestState.empty) RequestState detailsState,
    @Default(RequestState.empty) RequestState recommendationsState,
    @Default(null) String? errorMessage,
    @Default(null) String? watchlistMessage,
    @Default(null) MovieDetail? movie,
    @Default([]) List<Movie> movieRecommendations,
    @Default(false) bool isInWatchlist,
  }) = _MovieDetailState;

  factory MovieDetailState.initial() => MovieDetailState();
}
