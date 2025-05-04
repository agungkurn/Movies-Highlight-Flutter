part of 'movie_list_bloc.dart';

@freezed
abstract class MovieListState with _$MovieListState {
  const factory MovieListState({
    @Default(RequestState.empty) RequestState nowPlayingMoviesState,
    @Default(RequestState.empty) RequestState popularMoviesState,
    @Default(RequestState.empty) RequestState topRatedMoviesState,
    @Default(null) String? errorMessage,
    @Default([]) List<Movie> nowPlayingMovies,
    @Default([]) List<Movie> popularMovies,
    @Default([]) List<Movie> topRatedMovies,
  }) = _MovieListState;
}
