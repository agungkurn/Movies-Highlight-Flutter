part of 'popular_movies_bloc.dart';

@freezed
abstract class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState({
    @Default(RequestState.empty) RequestState state,
    @Default(null) String? errorMessage,
    @Default([]) List<Movie> movies,
  }) = _PopularMoviesState;
}
