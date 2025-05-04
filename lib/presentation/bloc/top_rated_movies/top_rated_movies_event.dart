part of 'top_rated_movies_bloc.dart';

@freezed
abstract class TopRatedMoviesEvent with _$TopRatedMoviesEvent {
  const factory TopRatedMoviesEvent.fetchTopRated() = _FetchTopRated;
}
