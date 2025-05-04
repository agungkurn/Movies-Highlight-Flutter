part of 'popular_movies_bloc.dart';

@freezed
abstract class PopularMoviesEvent with _$PopularMoviesEvent {
  const factory PopularMoviesEvent.fetchPopular() = _FetchPopular;
}
