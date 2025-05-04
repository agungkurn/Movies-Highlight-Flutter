part of 'top_rated_movies_bloc.dart';

@freezed
abstract class TopRatedMoviesState with _$TopRatedMoviesState {
  const factory TopRatedMoviesState({
    @Default(RequestState.empty) RequestState state,
    @Default(null) String? errorMessage,
    @Default([]) List<Movie> movies,
  }) = _TopRatedMoviesState;
}
