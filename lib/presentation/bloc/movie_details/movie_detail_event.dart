part of 'movie_detail_bloc.dart';

@freezed
abstract class MovieDetailEvent with _$MovieDetailEvent {
  const factory MovieDetailEvent.fetchDetails(int id) = _FetchDetails;

  const factory MovieDetailEvent.fetchRecommendations(int id) =
      _FetchRecommendations;

  const factory MovieDetailEvent.checkWatchlistStatus(int id) =
      _CheckWatchlistStatus;

  const factory MovieDetailEvent.addToWatchlist(MovieDetail movie) =
      _AddToWatchlist;

  const factory MovieDetailEvent.removeFromWatchlist(MovieDetail movie) =
      _RemoveFromWatchlist;
}
