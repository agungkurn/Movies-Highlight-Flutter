part of 'movie_search_bloc.dart';

@freezed
abstract class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState({
    @Default(RequestState.empty) RequestState state,
    @Default([]) List<Movie> searchResult,
    @Default(null) String? errorMessage,
  }) = _MovieSearchState;
}
