part of 'watchlist_movie_bloc.dart';

@freezed
abstract class WatchlistMovieEvent with _$WatchlistMovieEvent {
  const factory WatchlistMovieEvent.fetchWatchlist() = _FetchWatchlist;
}
