part of 'movie_list_bloc.dart';

@freezed
class MovieListEvent with _$MovieListEvent {
  const factory MovieListEvent.fetchNowPlaying() = _FetchNowPlaying;

  const factory MovieListEvent.fetchPopular() = _FetchPopular;

  const factory MovieListEvent.fetchTopRated() = _FetchTopRated;
}
